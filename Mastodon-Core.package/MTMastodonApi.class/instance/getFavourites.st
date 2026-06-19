endpoints
getFavourites
	| url response |
	url := self buildUrl: '/api/v1/favourites'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)