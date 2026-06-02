endpoints
follow: aUserID

	^ self getObjectAt: '/api/v1/accounts/', aUserID, '/follow' as: MTRelationship