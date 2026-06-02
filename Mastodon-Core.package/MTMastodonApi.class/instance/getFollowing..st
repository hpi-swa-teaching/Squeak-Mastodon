endpoints
getFollowing: aUserID

	^ self getCollectionAt: '/api/v1/accounts/', aUserID, '/following' as: MTAccount