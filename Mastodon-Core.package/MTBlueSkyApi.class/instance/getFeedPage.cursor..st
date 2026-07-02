endpoints
getFeedPage: aFeedUri cursor: aCursor

	| path url response json feed toots cursor |
	path := '/xrpc/app.bsky.feed.getFeed?feed=', (self urlEncode: aFeedUri), '&limit=30'.
	aCursor ifNotNil: [path := path, '&cursor=', (self urlEncode: aCursor)].
	url := self buildUrl: path.
	response := self getAppViewRequest: url.
	response ifNil: [response := self getPublicAppViewRequest: path].
	response ifNil: [^ MTResult error: 'BlueSky feed is temporarily unavailable'].
	
	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		cursor := json at: 'cursor' ifAbsent: [nil].
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: (MTBlueSkyFeedPage toots: toots cursor: cursor)]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky feed processing failed']