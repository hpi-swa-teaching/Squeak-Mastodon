endpoints
mute: aUserID

	^ self getRequestAt: '/api/v1/accounts/', aUserID, '/mute' intoObjectOf: MTRelationship
	