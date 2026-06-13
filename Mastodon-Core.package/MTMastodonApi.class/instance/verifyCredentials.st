authentification
verifyCredentials

	^ self getRequestAt: '/api/v1/accounts/verify_credentials' intoObjectOf: MTAccount