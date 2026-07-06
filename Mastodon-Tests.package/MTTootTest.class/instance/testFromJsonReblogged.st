initialization
testFromJsonReblogged

	| result expected |
	result := MTToot from: MTDataProvider secondTootRebloggedJson.
	
	expected := MTDataProvider secondTootReblogged.
	
	self assertToot: result matches: expected