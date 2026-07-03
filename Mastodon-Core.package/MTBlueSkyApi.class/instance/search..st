endpoints
search: aQuery

	| url response json actors accounts |
	url := self buildUrl: '/xrpc/app.bsky.actor.searchActors?q=', aQuery.
	response := self getRequest: url.
	accounts := OrderedCollection new.
	response ifNotNil: [
		json := self deserialize: response.
		actors := json at: 'actors' ifAbsent: [#()].
		accounts := (actors collect: [:actor | self accountFromAuthor: actor]) asOrderedCollection].
	^ MTResult value: (MTSearchResult new
		accounts: accounts;
		yourself)