tests
testSearchReturnsAccounts

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.searchActors?q=alice'
		with: self sampleSearchJson.
	api := self apiWithMockClient: client token: 'search-token'.
	
	result := api search: 'alice'.
	
	self assert: result isSuccess equals: true.
	self assert: result value accounts size equals: 2.
	self assert: result value accounts first acct equals: 'alice.bsky.social'.
	self assert: result value accounts first displayName equals: 'Alice Example'.
	self assert: (result value accounts at: 2) acct equals: 'bob.example.com'