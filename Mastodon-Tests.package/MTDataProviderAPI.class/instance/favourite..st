endpoints
favourite: aTootID

	^ aTootID
		caseOf: {
			[self firstToot id] -> [self firstTootFavourited].
			[self secondToot id] -> [self secondTootFavourited].
			[self thirdToot id] -> [self thirdTootFavourited]}
		otherwise: [self error: 'Invalid toot ID in favourite: ', aTootID]