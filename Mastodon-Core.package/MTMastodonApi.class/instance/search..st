endpoints
search: aQuery
	| url response |
	url := self buildUrl: '/api/v1/search?q=', aQuery, '&resolve=true'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTSearchResult).