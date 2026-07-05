endpoints
getPrivateTimeline

	| url response |
	url := self buildUrl: '/api/v1/timelines/home'.
	response := self getRequest: url.
	response ifNil: [^ MTResult error: 'Could not load timeline'].
	^ MTResult value: (self class deserialize: response intoCollectionOf: MTToot)