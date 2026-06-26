endpoints-timelines
getHomeTimelineMax: aNumber
	
	^ self getRequestAt: '/api/v1/timelines/home?max_id=', aNumber intoCollectionOf: MTToot