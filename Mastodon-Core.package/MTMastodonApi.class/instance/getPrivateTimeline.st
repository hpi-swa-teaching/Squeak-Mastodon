endpoints
getPrivateTimeline
	
	self halt.
	^ self getCollectionAt: '/api/v1/timelines/home' as: MTToot