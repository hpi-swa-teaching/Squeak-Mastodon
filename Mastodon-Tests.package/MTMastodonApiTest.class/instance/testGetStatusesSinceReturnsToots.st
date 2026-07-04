status endpoints
testGetStatusesSinceReturnsToots

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/7/statuses?since_id=5'
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getStatuses: '7' since: '5'.

	self assert: result value size equals: 1