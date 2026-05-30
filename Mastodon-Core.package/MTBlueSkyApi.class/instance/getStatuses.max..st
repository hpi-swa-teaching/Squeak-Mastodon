endpoints
getStatuses: anAccountID max: aMaxId
	^ self getAuthorFeedFor: anAccountID cursor: nil