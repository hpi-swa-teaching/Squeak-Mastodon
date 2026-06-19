endpoints
getPrivateTimeline
	| url response |
	url := self buildUrl: '/api/v1/timelines/home'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)