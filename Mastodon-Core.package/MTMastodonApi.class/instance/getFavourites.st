endpoints
getFavourites

	^ self getRequestAt: '/api/v1/favourites' intoCollectionOf: MTToot
	