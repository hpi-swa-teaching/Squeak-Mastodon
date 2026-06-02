endpoints
getStatuses: anAccountID max: aMaxId

	^ self getCollectionAt: '/api/v1/accounts/', anAccountID, '/statuses?max_id=', aMaxId as: MTToot