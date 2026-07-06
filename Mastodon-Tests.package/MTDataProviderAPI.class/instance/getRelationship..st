endpoints
getRelationship: anAccountID
	
	getRelationshipCalled := true.
	
	^ anAccountID
		caseOf: {
			[self firstAccount id] -> [self firstAccountRelationship]. 
			[self secondAccount id] -> [self secondAccountRelationship].
			[self thirdAccount id] -> [self thirdAccountRelationship]}
		otherwise: [self error: 'Invalid account ID in getRelationship: ', anAccountID]