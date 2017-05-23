endpoints
unfollow: aUserID
	| url |
	url := self baseURL, '/api/v1/accounts/', aUserID ,'/unfollow'.
	^ self postRequest: url.