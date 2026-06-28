endpoints-timelines
getTrendingTimeline

	^ self getRequest: '/api/v1/trends/statuses' intoCollectionOf: MTToot