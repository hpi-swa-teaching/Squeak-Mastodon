toots-properties
firstTootFavourited

	^ MTUtils stringToBool: (self firstTootJson at: 'favourited')