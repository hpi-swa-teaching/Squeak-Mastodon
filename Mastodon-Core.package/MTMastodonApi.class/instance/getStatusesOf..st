endpoints-timelines
getStatusesOf: anAccountID

	^ self getRequestAt: '/api/v1/accounts/', anAccountID, '/statuses' intoCollectionOf: MTToot