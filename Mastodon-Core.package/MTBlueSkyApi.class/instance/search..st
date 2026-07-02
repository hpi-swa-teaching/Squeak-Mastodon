endpoints
search: aQuery

	| url response json actors accounts |
	url := self buildUrl: '/xrpc/app.bsky.actor.searchActors?q=', aQuery.
	response := self getRequest: url.
	accounts := OrderedCollection new.
	response ifNotNil: [
		json := self deserialize: response.
		actors := json at: 'actors' ifAbsent: [#()].
		actors do: [:actor | accounts add: (self accountFromAuthor: actor)]].
	^ MTResult value: (MTSearchResult new
		accounts: accounts;
		yourself)