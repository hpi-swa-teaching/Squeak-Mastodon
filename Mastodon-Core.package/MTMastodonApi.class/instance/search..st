endpoints
search: aQuery

	| url response |
	url := self buildUrl: '/api/v1/search?q=', aQuery, '&resolve=true'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'Mastodon search request failed'].
	^ MTResult value: (self class deserialize: response intoObjectOf: MTSearchResult)