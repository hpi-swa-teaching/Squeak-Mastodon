tests
testGetPublicTimelineSkipsMalformedStatuses

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/timelines/public'
		with: '[', DataProvider mockTootWithoutImage, ', null]'.
	api := self apiWithMockClient: client.
	
	result := api getPublicTimeline.
	
	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1