endpoints
getRelationship: anAccountID

	^ self getCollectionAt: '/api/v1/accounts/relationships?id=', anAccountID as: MTRelationship