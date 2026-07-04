status endpoints
testGetStatusReturnsToot

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/statuses/43'
		with: DataProvider mockTootWithoutImage.
	api := self apiWithMockClient: client.

	result := api getStatus: '43'.

	self assert: result isSuccess equals: true.
	self assert: result value class equals: MTToot.
	self assert: result value id equals: 43