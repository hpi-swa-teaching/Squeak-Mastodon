endpoints
getRelationship: anAccountID

	^ self getRequestAt: '/api/v1/accounts/relationships?id=', anAccountID intoCollectionOf: MTRelationship