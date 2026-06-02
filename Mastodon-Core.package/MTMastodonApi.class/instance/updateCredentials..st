endpoints
updateCredentials: aDictionary

	^ self patchObjectAt: '/api/v1/accounts/update_credentials' withParameters: aDictionary as: MTAccount