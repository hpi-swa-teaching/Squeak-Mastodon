endpoints-timelines
getLiveTimeline

	^ self getRequest: '/api/v1/timelines/public?local=true' intoCollectionOf: MTToot