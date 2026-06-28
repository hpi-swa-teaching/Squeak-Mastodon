endpoints
getFavourites

	^ self getRequest: '/api/v1/favourites' intoCollectionOf: MTToot
	