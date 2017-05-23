endpoints
follow: aUserID
	| url |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/follow'.
	^ self postRequest: url.