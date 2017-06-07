endpoints
unfavourite: aStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/unfavourite'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoObjectOf: MTToot).