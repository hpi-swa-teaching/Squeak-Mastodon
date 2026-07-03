endpoints
getContextOf: aStatusID
	
	^ self postContextFrom: (self getRequest: '/api/v1/statuses/', aStatusID, '/context')
