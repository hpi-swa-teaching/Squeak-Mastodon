endpoints
getCurrentUser
	
	^ currentUser ifNil: [currentUser self getRequestAt: '/api/v1/accounts/verify_credentials' intoObjectOf: MTAccount]