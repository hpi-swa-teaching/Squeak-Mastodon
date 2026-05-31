endpoints
favourite: aToot
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aToot id ,'/favourite'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)