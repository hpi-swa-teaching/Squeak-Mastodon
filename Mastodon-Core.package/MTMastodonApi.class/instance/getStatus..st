endpoints
getStatus: anStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', anStatusID.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoObjectOf: MTToot).