action endpoints
testTootPostsStatus

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: DataProvider mockTootWithoutImage).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	result := api toot: 'Hello world' withVisibility: 'public'.
	
	self assert: result value class equals: MTToot.
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/statuses'