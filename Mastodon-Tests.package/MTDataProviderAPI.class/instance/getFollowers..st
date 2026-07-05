endpoints
getFollowers: anAccountID
	
	getFollowersCalled := true.

	^ anAccountID
		caseOf: {
			[self firstAccount id] -> [{self secondAccount. self thirdAccount}].
			[self secondAccount id] -> [{}].
			[self thirdAccount id] -> [{self firstAccount}]}
		otherwise: [self error: 'Invalid account ID in getFollowers: ', anAccountID]