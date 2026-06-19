endpoints
getFeed: aFeedUri
	| url response json feed toots |
	url := self buildUrl: '/xrpc/app.bsky.feed.getFeed?feed=', aFeedUri, '&limit=30'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky feed request failed'].
	
	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: toots
	] on: Error do: [:ex |
		^ MTResult error: 'BlueSky feed processing failed'
	].
