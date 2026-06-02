endpoints
getPrivateTimeline

	^ self getCollectionAt: '/api/v1/timelines/home' as: MTToot