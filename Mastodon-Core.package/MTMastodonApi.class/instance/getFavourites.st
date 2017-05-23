endpoints
getFavourites
	| url |
	url := self baseURL, '/api/v1/favourites'.
	^ self getRequest: url.