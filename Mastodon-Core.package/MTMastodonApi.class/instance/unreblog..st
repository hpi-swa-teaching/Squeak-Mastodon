endpoints
unreblog: aStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/unreblog'.
	response := self postRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).