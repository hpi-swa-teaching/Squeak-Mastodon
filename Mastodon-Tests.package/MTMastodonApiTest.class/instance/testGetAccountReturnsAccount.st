account endpoints
testGetAccountReturnsAccount

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/11792'
		with: DataProvider mockAccount.
	api := self apiWithMockClient: client.

	result := api getAccount: '11792'.

	self assert: result value class equals: MTAccount.
	self assert: result value username equals: 'momomo'