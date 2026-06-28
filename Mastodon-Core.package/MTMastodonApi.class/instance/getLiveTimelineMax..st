endpoints-timelines
getLiveTimelineMax: aNumber
	
	^ self getRequest: '/api/v1/timelines/public?local=true&max_id=', aNumber intoCollectionOf: MTToot