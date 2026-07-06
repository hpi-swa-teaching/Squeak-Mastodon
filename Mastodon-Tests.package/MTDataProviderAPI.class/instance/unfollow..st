endpoints
unfollow: anAccountID
	
	unfollowCalled := true.
	
	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship].
			[self thirdAccount id] -> [self thirdAccountRelationship]}
		otherwise: [self error: 'Invalid account ID in unfollow: ', anAccountID]