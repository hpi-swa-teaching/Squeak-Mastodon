endpoints-timelines
getHomeTimeline

	^ self getRequest: '/api/v1/timelines/home' intoCollectionOf: MTToot