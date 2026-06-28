endpoints-timelines
getHomeTimeline
	
	^ self getRequestAt: '/api/v1/timelines/home' intoCollectionOf: MTToot