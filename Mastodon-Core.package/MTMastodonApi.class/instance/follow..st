endpoints
follow: aUserID

	^ self postRequest: '/api/v1/accounts/', aUserID, '/follow' intoObjectOf: MTRelationship