endpoints
searchFeeds: aQuery

	| url response json feedViews feeds |
	url := self buildUrl: '/xrpc/app.bsky.unspecced.getPopularFeedGenerators?limit=10&query=', (self urlEncode: aQuery).
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky feed search request failed'].
	
	[
		json := self deserialize: response.
		feedViews := json at: 'feeds' ifAbsent: [#()].
		feeds := feedViews collect: [:feed | self feedFromGeneratorView: feed].
		^ MTResult value: feeds]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky feed search processing failed']