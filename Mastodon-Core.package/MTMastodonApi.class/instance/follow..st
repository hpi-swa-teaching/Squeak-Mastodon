endpoints
follow: aUserID
	
	self halt.
	^ self postRequest: '/api/v1/accounts/', aUserID, '/follow' intoObjectOf: MTRelationship