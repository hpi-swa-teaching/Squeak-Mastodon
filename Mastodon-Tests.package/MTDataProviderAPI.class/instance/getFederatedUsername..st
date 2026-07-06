endpoints
getFederatedUsername: anAccountID
	
	getFederatedUsernameCalled := true.
	
	^ anAccountID
		caseOf: {
			[self firstAccount id] -> [self firstAccount federatedUsername].
			[self secondAccount id] -> [self secondAccount federatedUsername].
			[self thirdAccount id] -> [self thirdAccount federatedUsername]}
		otherwise: [self error: 'Invalid account ID in getFederatedUsername: ', anAccountID]