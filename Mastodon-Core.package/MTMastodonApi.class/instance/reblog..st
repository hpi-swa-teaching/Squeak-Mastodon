endpoints
reblog: aStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID ,'/reblog'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot).