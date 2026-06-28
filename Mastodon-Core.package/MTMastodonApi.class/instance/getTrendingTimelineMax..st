endpoints-timelines
getTrendingTimelineMax: aNumber
	
	^ self getRequestAt: '/api/v1/trends/statuses?max_id=', aNumber intoCollectionOf: MTToot