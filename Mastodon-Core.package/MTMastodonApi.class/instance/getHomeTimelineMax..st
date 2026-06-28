endpoints-timelines
getHomeTimelineMax: aNumber
	
	^ self getRequest: '/api/v1/timelines/home?max_id=', aNumber intoCollectionOf: MTToot