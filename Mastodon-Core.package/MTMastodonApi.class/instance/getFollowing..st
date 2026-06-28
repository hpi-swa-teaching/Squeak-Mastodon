endpoints
getFollowing: aUserID

	^ self getRequest: '/api/v1/accounts/', aUserID, '/following' intoCollectionOf: MTAccount