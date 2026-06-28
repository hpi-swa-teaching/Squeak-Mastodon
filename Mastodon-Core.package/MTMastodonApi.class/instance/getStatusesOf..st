endpoints-timelines
getStatusesOf: anAccountID

	^ self getRequest: '/api/v1/accounts/', anAccountID, '/statuses' intoCollectionOf: MTToot