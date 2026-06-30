responses-toots
firstTootFavourited

	^ MTToot from: (self firstTootJson
		at: 'favourited' put: true;
		at: 'favourites_count' put: 1)