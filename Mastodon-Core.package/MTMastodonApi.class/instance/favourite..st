endpoints
favourite: aStatusID
	| url |
	url := self baseURL, '/api/v1/statuses/', aStatusID ,'/favourite'.
	^ self postRequest: url.