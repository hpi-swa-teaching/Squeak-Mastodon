endpoints-timelines
getTrendingTimelineMax: aNumber
	
	^ self getRequest: '/api/v1/trends/statuses?max_id=', aNumber intoCollectionOf: MTToot