endpoints
block: aUserID

	^ self getRequestAt: '/api/v1/accounts/', aUserID, '/block' intoObjectOf: MTRelationship