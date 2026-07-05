endpoints
unfavourite: aTootID
	
	unfavouriteCalled := true.
	
	^ aTootID
		caseOf: {
			[self firstToot id] -> [self firstToot].
			[self secondToot id] -> [self secondToot].
			[self thirdToot id] -> [self thirdToot]}
		otherwise: [self error: 'Invalid toot ID in unfavourite: ', aTootID]