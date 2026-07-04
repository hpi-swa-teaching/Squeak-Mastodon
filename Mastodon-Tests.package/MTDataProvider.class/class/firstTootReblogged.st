toots-properties
firstTootReblogged

	^ MTUtils stringToBool: (self firstTootJson at: 'reblogged')