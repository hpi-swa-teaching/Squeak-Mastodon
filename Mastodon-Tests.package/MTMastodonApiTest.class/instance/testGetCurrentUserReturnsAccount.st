account endpoints
testGetCurrentUserReturnsAccount

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/verify_credentials'
		with: DataProvider mockAccount.
	api := self apiWithMockClient: client.

	result := api getCurrentUser.

	self assert: result value class equals: MTAccount