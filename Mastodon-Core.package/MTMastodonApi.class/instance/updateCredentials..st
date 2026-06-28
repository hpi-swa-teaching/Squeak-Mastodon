endpoints
updateCredentials: aDictionary

	^ self patchRequest: '/api/v1/accounts/update_credentials' withParameters: aDictionary intoObjectOf: MTAccount