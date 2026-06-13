endpoints
search: aQuery

	^ self getRequestAt: '/api/v2/search?q=', aQuery, '&resolve=true' intoObjectOf: MTSearchResult