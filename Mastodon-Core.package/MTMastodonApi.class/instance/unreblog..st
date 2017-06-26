endpoints
unreblog: aStatusID
	| url response |
	url := self buildUrl: '/api/v1/statuses/', aStatusID ,'/unreblog'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).