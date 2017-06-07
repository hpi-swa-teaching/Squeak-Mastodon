endpoints
favourite: aStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/favourite'.
	response := self getRequest: url.
	Transcript show: response.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).