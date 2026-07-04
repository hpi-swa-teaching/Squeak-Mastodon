status endpoints
testGetStatusesMaxReturnsToots

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/accounts/7/statuses?max_id='
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getStatuses: '7' max: '20'.

	self assert: result value size equals: 1