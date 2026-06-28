endpoints-timelines
getTrendingTimelineSince: aNumber
	
	^ self getRequestAt: '/api/v1/trends/statuses?since_id=', aNumber intoCollectionOf: MTToot
	