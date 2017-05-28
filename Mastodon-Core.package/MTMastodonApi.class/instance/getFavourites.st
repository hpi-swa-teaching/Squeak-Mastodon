endpoints
getFavourites
	| url response |
	url := self baseURL, '/api/v1/favourites'.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoCollectionOf: MTToot).