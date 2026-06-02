endpoints
getStatus: anStatusID

	^ self getCollectionAt: '/api/v1/statuses/', anStatusID as: MTToot
	