initialization
testFromJsonFavourited

	| result expected |
	result := MTToot from: MTDataProvider secondTootFavouritedJson.
	
	expected := MTDataProvider secondTootFavourited.
	
	self assertToot: result matches: expected