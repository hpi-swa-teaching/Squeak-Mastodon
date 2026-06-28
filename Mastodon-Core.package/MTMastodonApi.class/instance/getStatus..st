endpoints-timelines
getStatus: anStatusID

	^ self getRequestAt: '/api/v1/statuses/', anStatusID intoCollectionOf: MTToot
	