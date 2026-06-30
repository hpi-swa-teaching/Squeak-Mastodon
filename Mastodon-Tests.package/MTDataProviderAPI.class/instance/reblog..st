endpoints
reblog: aTootID

	^ aTootID
		caseOf: {
			[self firstToot id] -> [self firstTootReblogged].
			[self secondToot id] -> [self secondTootReblogged].
			[self thirdToot id] -> [self thirdTootReblogged]}
		otherwise: [self error: 'Invalid toot ID in reblog: ', aTootID]