endpoints
getFeedPage: aFeedUri cursor: aCursor
	| url response json feed toots cursor |
	url := self buildUrl: '/xrpc/app.bsky.feed.getFeed?feed=', aFeedUri, '&limit=30'.
	aCursor ifNotNil: [url := url, '&cursor=', aCursor].
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky feed request failed'].
	
	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		cursor := json at: 'cursor' ifAbsent: [nil].
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: (MTBlueSkyFeedPage toots: toots cursor: cursor)
	] on: Error do: [:ex |
		^ MTResult error: 'BlueSky feed processing failed'
	].
