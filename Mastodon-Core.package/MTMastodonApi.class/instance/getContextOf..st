endpoints
getContextOf: aStatusID
	
	^ self postRequest: '/api/v1/statuses/', aStatusID, '/context' intoObjectOf: MTContext
