endpoints
getPublicTimeline

	| url response |
	url := self buildUrl: '/api/v1/timelines/public'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'Could not load public timeline'].
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)