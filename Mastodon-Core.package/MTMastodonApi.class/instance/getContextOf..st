endpoints
getContextOf: aStatusID
	
	self halt.
	^ self postContextFrom: (self getRequest: '/api/v1/statuses/', aStatusID, '/context')
