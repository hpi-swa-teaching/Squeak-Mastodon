tests
testGetPublicTimelineUsesPublicEndpoint
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://mastodon.social/api/v1/timelines/public' with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getPublicTimeline.

	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1.
	self assert: client lastGetUrl equals: 'https://mastodon.social/api/v1/timelines/public'