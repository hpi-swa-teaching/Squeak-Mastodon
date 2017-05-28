endpoints
verifyCredentials
	| url |
	url := self baseURL, '/api/v1/accounts/verify_credentials'.
	^ (self getRequest: url)