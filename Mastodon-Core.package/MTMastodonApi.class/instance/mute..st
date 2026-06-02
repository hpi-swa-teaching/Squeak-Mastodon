endpoints
mute: aUserID

	^ self getObjectAt: '/api/v1/accounts/', aUserID, '/mute' as: MTRelationship
	