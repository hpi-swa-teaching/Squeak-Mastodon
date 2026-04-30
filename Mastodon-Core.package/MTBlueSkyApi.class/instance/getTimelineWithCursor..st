helpers
getTimelineWithCursor: aCursor
	| url response json feed toots |
	url := self buildUrl: '/xrpc/app.bsky.feed.getTimeline?limit=30'.
	aCursor ifNotNil: [url := url, '&cursor=', aCursor].
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky timeline request failed'].
	
	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		Transcript show: 'BlueSky timeline feed items count: ', feed size asString; cr.
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: toots
	] on: Error do: [:ex |
		Transcript show: 'Error processing BlueSky timeline: ', ex description; cr.
		Transcript show: 'Raw Response: ', response; cr.
		^ MTResult error: 'BlueSky timeline processing failed'
	].