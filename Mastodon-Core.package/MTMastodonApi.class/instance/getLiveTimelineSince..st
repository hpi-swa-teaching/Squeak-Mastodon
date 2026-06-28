endpoints-timelines
getLiveTimelineSince: aNumber
	
	^ self getRequestAt: '/api/v1/timelines/public?local=true&since_id=', aNumber intoCollectionOf: MTToot
	