endpoints
search: aQuery
	| url response |
	url := self baseURL, '/api/v1/search?q=', aQuery.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTSearchResult).