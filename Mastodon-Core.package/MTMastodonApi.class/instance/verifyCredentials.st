authentification
verifyCredentials
	| url response |
	url := self baseURL, '/api/v1/accounts/verify_credentials'.
	response := self getRequest: url.
	^ MTResult value: (self deserialize: (response content) intoObjectOf: MTAccount).