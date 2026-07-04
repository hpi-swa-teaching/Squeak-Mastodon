json-toots
thirdTootFavouritedJson

	^self thirdTootJson
		at: 'favourited' put: true;
		at: 'favourites_count' put: 6