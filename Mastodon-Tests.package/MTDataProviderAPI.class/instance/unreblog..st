endpoints
unreblog: aTootID

	^ aTootID
		caseOf: {
			[self firstTootReblogged id] -> [self firstToot].
			[self secondTootReblogged id] -> [self secondToot].
			[self thirdTootReblogged id] -> [self thirdToot]}
		otherwise: [self error: 'Invalid toot ID in unreblog: ', aTootID]