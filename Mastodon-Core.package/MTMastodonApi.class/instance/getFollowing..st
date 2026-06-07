endpoints
getFollowing: aUserID

	^ self getRequestAt: '/api/v1/accounts/', aUserID, '/following' intoCollectionOf: MTAccount