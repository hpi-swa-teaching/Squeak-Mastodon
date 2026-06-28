endpoints-timelines
getTrendingTimelineSince: aNumber
	
	^ self getRequest: '/api/v1/trends/statuses?since_id=', aNumber intoCollectionOf: MTToot
	