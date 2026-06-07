endpoints
follow: aUserID

	^ self getRequestAt: '/api/v1/accounts/', aUserID, '/follow' intoObjectOf: MTRelationship