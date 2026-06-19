endpoints
updateCredentials: aDictionary
	| url response  |
	
	url := self buildUrl: '/api/v1/accounts/update_credentials'.
	response := self patchRequest: url withParameters: aDictionary.
	^ response