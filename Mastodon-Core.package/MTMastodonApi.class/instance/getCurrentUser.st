endpoints
getCurrentUser
	
	^ currentUser ifNil: [currentUser := self getRequest: '/api/v1/accounts/verify_credentials' intoObjectOf: MTAccount]