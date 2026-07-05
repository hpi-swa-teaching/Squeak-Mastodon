endpoints
search: aQuery

	| url response json actors accounts |
	url := self buildUrl: '/xrpc/app.bsky.actor.searchActors?q=', aQuery.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'BlueSky search request failed'].
	[
		json := self deserialize: response.
		actors := json at: 'actors' ifAbsent: [#()].
		accounts := (actors collect: [:actor | self accountFromAuthor: actor]) asOrderedCollection.
		^ MTResult value: (MTSearchResult new
			accounts: accounts;
			yourself)]
		on: Error
		do: [:ex | ^ MTResult error: 'BlueSky search processing failed']