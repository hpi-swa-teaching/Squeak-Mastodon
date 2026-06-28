endpoints-timelines
getStatusesOf: anAccountID max: aMaxId

	^ self getRequest: '/api/v1/accounts/', anAccountID, '/statuses?max_id=', aMaxId intoCollectionOf: MTToot