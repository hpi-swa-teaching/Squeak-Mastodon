endpoints
getPrivateTimeline
	| url response |
	url := self baseURL, '/api/v1/timelines/home'.
	response := self getRequest: url.
	^ MTResult value: (self class deserialize: (response content) intoCollectionOf: MTToot).