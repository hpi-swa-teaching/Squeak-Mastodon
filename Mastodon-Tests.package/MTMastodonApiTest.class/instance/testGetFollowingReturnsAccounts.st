account endpoints
testGetFollowingReturnsAccounts

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/7/following'
		with: '[', DataProvider mockAccount, ']'.
	api := self apiWithMockClient: client.

	result := api getFollowing: '7'.

	self assert: result value size equals: 1