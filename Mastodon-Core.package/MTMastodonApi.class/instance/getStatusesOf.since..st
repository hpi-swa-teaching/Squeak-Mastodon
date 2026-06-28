endpoints-timelines
getStatusesOf: anAccountID since: aSinceID

	^ self getRequest: '/api/v1/accounts/', anAccountID, '/statuses?since_id=', aSinceID intoCollectionOf: MTToot