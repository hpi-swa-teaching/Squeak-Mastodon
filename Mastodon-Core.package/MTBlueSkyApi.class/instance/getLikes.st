endpoints
getLikes
	| url response currentDid json feed toots |
	currentDid := self getCurrentDid.
	currentDid ifNil: [^ MTResult error: 'Could not determine current user DID'].
	url := self buildUrl: '/xrpc/app.bsky.feed.getActorLikes?limit=30&actor=', currentDid.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky likes request failed'].

	[
		json := self deserialize: response.
		feed := json at: 'feed' ifAbsent: [#()].
		toots := feed collect: [:item | self tootFromFeedItem: item].
		^ MTResult value: toots
	] on: Error do: [:ex |
		^ MTResult error: 'BlueSky likes processing failed'
	].