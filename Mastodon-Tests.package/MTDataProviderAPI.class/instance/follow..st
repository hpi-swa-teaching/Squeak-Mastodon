endpoints
follow: anAccountID

	followCalled := true.
	
	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship following: true].
			[self thirdAccount id] -> [self thirdAccountRelationship following: true]}
		otherwise: [self error: 'Invalid account ID in follow: ', anAccountID]