endpoints
search: aQuery

	^ self getRequest: '/api/v2/search?q=', aQuery, '&resolve=true' intoObjectOf: MTSearchResult