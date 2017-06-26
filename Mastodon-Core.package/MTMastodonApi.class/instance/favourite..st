endpoints
favourite: aStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID ,'/favourite'.
	response := self postRequest: url.
	Transcript show: response.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).