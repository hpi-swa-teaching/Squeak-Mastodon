authentification
verifyCredentials

	^ self getRequest: '/api/v1/accounts/verify_credentials' intoObjectOf: MTAccount