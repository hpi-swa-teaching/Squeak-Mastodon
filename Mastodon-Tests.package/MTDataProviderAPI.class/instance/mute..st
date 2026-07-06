endpoints
mute: anAccountID
	
	muteCalled := true.
	
	^ anAccountID
		caseOf: {
			[self secondAccount id] -> [self secondAccountRelationship muting: true].
			[self thirdAccount id] -> [self thirdAccountRelationship muting: true]}
		otherwise: [self error: 'Invalid account ID in mute: ', anAccountID]