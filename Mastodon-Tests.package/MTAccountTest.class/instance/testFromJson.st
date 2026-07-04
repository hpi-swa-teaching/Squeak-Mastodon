initialization
testFromJson

	| result expected |
	result := MTAccount from: MTDataProvider firstAccountJson.
	
	expected := MTDataProvider firstAccount.
	
	self assertAccount: result matches: expected