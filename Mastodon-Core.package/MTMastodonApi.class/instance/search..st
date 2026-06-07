endpoints
search: aQuery

	^ self getRequestAt: '/api/v1/search?q=', aQuery, '&resolve=true' intoObjectOf: MTSearchResult