endpoints
getPrivateTimeline
	| url |
	url := self baseURL, '/api/v1/timelines/home'.
	^ self getRequest: url.