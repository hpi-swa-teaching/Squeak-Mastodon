endpoints
getPrivateTimelineSince: aSinceID
	| url response |
	url := self buildUrl: '/api/v1/timelines/home?since_id=', aSinceID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoCollectionOf: MTToot).