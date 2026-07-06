json-toots
secondTootFavouritedJson

	^ self secondTootJson
		at: 'favourited' put: true;
		at: 'favourites_count' put: 4