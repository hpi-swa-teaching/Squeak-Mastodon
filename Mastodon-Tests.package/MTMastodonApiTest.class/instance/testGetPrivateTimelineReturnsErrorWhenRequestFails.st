tests
testGetPrivateTimelineReturnsErrorWhenRequestFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://mastodon.social/api/v1/timelines/home'.
	api := self apiWithMockClient: client.
	
	result := api getPrivateTimeline.
	
	self assert: result isError equals: true