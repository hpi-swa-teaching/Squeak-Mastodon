endpoints
unreblog: aTootID
	
	unreblogCalled := true.
	
	^ aTootID
		caseOf: {
			[self secondTootReblogged id] -> [self secondToot].
			[self thirdTootReblogged id] -> [self thirdToot]}
		otherwise: [self error: 'Invalid toot ID in unreblog: ', aTootID]