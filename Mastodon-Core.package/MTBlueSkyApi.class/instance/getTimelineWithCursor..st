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
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: toots]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky timeline processing failed']