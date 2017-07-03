endpoints
getStatus: anStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', anStatusID.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot).