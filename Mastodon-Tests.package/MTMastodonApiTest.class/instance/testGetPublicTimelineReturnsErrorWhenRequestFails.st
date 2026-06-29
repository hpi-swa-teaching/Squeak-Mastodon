tests
testGetPublicTimelineReturnsErrorWhenRequestFails
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client failGet: 'https://mastodon.social/api/v1/timelines/public'.
	api := self apiWithMockClient: client.

	result := api getPublicTimeline.

	self assert: result isError equals: true