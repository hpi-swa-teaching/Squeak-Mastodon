endpoints-timelines
getHomeTimelineMax: aTootID
	
	^ self getRequest: '/api/v1/timelines/home?max_id=', aTootID intoCollectionOf: MTToot