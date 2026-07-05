account endpoints
testGetRelationshipReturnsRelationships

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/relationships?id=7'
		with: '[', '{"id":"7","following":true,"followed_by":false,"blocking":false,"muting":false,"requested":false,"domainBlocking":false}', ']'.
	api := self apiWithMockClient: client.
	
	result := api getRelationship: '7'.
	
	self assert: result value size equals: 1.
	self assert: result value first class equals: MTRelationship