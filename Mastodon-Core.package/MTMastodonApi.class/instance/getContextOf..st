endpoints
getContextOf: aStatusID
	
	^ self getRequest: '/api/v1/statuses/', aStatusID, '/context' intoObjectOf: MTContext
