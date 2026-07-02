helpers
getTimelinePageWithCursor: aCursor

	| url response json feed toots |
	url := self buildUrl: '/xrpc/app.bsky.feed.getTimeline?limit=30'.
	aCursor ifNotNil: [url := url, '&cursor=', (self urlEncode: aCursor)].
	response := self getAppViewRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky timeline request failed'].
	
	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: (MTBlueSkyFeedPage toots: toots cursor: (json at: 'cursor' ifAbsent: [nil]))]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky timeline processing failed']