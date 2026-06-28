endpoints-timelines
getLiveTimeline

	^ self getRequestAt: '/api/v1/timelines/public?local=true' intoCollectionOf: MTToot