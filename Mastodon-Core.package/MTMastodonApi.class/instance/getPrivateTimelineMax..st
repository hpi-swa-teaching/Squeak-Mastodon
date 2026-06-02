endpoints
getPrivateTimelineMax: aMaxID

	self getCollectionAt: '/api/v1/timelines/home?max_id=', aMaxID as: MTToot