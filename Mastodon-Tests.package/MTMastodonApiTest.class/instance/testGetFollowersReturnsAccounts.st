account endpoints
testGetFollowersReturnsAccounts

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/7/followers'
		with: '[', DataProvider mockAccount, ']'.
	api := self apiWithMockClient: client.

	result := api getFollowers: '7'.

	self assert: result value size equals: 1.
	self assert: result value first class equals: MTAccount