endpoints-timelines
getTrendingTimeline

	^ self getRequestAt: '/api/v1/trends/statuses' intoCollectionOf: MTToot