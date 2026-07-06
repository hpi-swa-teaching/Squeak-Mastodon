endpoints
getAccount: anAccountID

	getAccountCalled := true.
	
	^ anAccountID
		caseOf: {
			[self firstAccount id] -> [self firstAccount].
			[self secondAccount id] -> [self secondAccount].
			[self thirdAccount id] -> [self secondAccount]}
		otherwise: [self error: 'Invalid account ID in getAccount: ', anAccountID]