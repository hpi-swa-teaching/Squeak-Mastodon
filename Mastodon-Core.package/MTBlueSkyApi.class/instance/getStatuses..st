endpoints
getStatuses: anAccountID

	^ self getAuthorFeedFor: anAccountID cursor: nil