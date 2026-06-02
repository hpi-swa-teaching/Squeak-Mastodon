endpoints
getFavourites

	^ self getCollectionAt: '/api/v1/favourites' as: MTToot
	