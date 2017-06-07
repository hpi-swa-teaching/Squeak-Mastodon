endpoints
search: aQuery
	| url response |
	url := self baseURL, '/api/v1/search?q=', aQuery, '&resolve=true'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTSearchResult).