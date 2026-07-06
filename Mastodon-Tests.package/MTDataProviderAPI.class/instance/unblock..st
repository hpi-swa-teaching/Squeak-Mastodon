endpoints
unblock: anAccountID

	unblockCalled := true.

	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship blocking: false].
			[self thirdAccount id] -> [self thirdAccountRelationship blocking: false]}
		otherwise: [self error: 'Invalid account ID in unblock: ', anAccountID]