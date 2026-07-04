timeline endpoints
testGetPrivateTimelineMaxReturnsToots

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/timelines/home?max_id=9'
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := self apiWithMockClient: client.

	result := api getPrivateTimelineMax: '9'.

	self assert: result isSuccess equals: true.
	self assert: result value size equals: 1.
	self assert: client lastGetUrl equals: 'https://mastodon.social/api/v1/timelines/home?max_id=9'