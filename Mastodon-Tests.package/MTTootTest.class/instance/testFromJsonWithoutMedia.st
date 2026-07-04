initialization
testFromJsonWithoutMedia

	| result expected |
	result := MTToot from: MTDataProvider firstTootWithoutMediaJson.
	
	expected := MTDataProvider firstTootWithoutMedia.
	
	self assertToot: result matches: expected