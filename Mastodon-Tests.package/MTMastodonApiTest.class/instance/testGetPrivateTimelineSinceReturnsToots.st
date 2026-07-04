timeline endpoints
testGetPrivateTimelineSinceReturnsToots

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/timelines/home?since_id=1'
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getPrivateTimelineSince: '1'.

	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1