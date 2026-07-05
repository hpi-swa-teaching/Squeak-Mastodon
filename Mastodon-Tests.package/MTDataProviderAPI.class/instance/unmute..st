endpoints
unmute: anAccountID
	
	unmuteCalled := true.
	
	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship].
			[self thirdAccount id] -> [self thirdAccountRelationship]}
		otherwise: [self error: 'Invalid account ID in unmute: ', anAccountID]