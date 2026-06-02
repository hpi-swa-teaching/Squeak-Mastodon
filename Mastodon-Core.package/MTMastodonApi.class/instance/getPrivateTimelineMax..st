endpoints
getPrivateTimelineMax: aMaxID
	
	self halt.
	self getCollectionAt: '/api/v1/timelines/home?max_id=', aMaxID as: MTToot