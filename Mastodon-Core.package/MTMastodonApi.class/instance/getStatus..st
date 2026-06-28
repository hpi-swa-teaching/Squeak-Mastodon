endpoints-timelines
getStatus: anStatusID

	^ self getRequest: '/api/v1/statuses/', anStatusID intoCollectionOf: MTToot
	