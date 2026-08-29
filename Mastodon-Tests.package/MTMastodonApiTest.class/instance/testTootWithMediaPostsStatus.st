action endpoints
testTootWithMediaPostsStatus

	| api client |
	client := MTBlueSkyMockWebClient new.
	client postResponse: (MTBlueSkyMockResponse successWith: DataProvider mockTootWithoutImage).
	api := self apiWithMockClient: client.
	api token: 'mastodon-token'.
	
	api toot: 'With media' withMedia: '9' withVisibility: 'public'.
	
	self assert: client lastPostUrl equals: 'https://mastodon.social/api/v1/statuses'