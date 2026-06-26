endpoints-timelines
getStatusesOf: anAccountID max: aMaxId

	^ self getRequestAt: '/api/v1/accounts/', anAccountID, '/statuses?max_id=', aMaxId intoCollectionOf: MTToot