initialization
testFromJsonReply

	| result expected |
	result := MTToot from: MTDataProvider firstTootReplyJson.
	
	expected := MTDataProvider firstTootReply.
	
	self assertToot: result matches: expected