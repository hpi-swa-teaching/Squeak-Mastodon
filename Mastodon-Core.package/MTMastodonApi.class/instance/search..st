endpoints
search: aQuery

	^ self getObjectAt: '/api/v1/search?q=', aQuery, '&resolve=true' as: MTSearchResult