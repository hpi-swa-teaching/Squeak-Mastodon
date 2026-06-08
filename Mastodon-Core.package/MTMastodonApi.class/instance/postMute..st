endpoints
postMute: aUserID

	^ self postRequest: '/api/v1/accounts/', aUserID, '/mute' intoObjectOf: MTRelationship
	