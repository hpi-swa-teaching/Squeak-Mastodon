endpoints
mute: aUserID

	^ self getRequest: '/api/v1/accounts/', aUserID, '/mute' intoObjectOf: MTRelationship
	