endpoints
favourite: aStatusID
	| url response |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/favourite'.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoCollectionOf: MTToot).