endpoints-timelines
getLiveTimelineMax: aNumber
	
	^ self getRequestAt: '/api/v1/timelines/public?local=true&max_id=', aNumber intoCollectionOf: MTToot