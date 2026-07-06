endpoints
block: anAccountID

	blockCalled := true.
	
	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship blocking: true].
			[self thirdAccount id] -> [self thirdAccountRelationship blocking: true]}
		otherwise: [self error: 'Invalid account ID in block: ', anAccountID]