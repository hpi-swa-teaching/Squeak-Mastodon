endpoints
unfavourite: aStatusID
	| url |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/unfavourite'.
	^ self postRequest: url.