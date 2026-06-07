endpoints
updateCredentials: aDictionary

	^ self patchRequestAt: '/api/v1/accounts/update_credentials' withParameters: aDictionary intoObjectOf: MTAccount