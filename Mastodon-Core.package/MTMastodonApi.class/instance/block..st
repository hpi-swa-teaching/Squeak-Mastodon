endpoints
block: aUserID
	| url |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/block'.
	^ self postRequest: url.