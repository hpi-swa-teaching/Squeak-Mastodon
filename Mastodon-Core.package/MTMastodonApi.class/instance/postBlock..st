endpoints
postBlock: aUserID

	^ self postRequest: '/api/v1/accounts/', aUserID, '/block' intoObjectOf: MTRelationship