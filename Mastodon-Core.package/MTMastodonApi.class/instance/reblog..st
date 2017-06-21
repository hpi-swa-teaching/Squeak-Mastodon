endpoints
reblog: aStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/reblog'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).