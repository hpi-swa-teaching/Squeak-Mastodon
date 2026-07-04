initialization
testFromJsonWithMedia

	| result expected |
	result := MTToot from: MTDataProvider firstTootJson.
	
	expected := MTDataProvider firstToot.
	
	self assertToot: result matches: expected