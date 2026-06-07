endpoints
getPrivateTimelineMax: aMaxID
	
	^ self getRequestAt: '/api/v1/timelines/home?max_id=', aMaxID intoCollectionOf: MTToot