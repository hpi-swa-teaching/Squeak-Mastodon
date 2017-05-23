endpoints
mute: aUserID
	| url |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/mute'.
	^ self postRequest: url.