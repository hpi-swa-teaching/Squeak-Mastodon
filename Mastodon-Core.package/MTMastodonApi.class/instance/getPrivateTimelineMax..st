endpoints
getPrivateTimelineMax: aMaxID
	| url response |
	url := self buildUrl: '/api/v1/timelines/home?max_id=', aMaxID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)