public timeline
testLoggedOutMastodonLoadsPublicTimeline

	| client api timeline |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://mastodon.social/api/v1/timelines/public'
		with: '[', DataProvider mockTootWithoutImage, ']'.
	api := MTMastodonApi with: 'https://mastodon.social' token: nil.
	api webClient: client.
	timeline := MTUIHomeTimeline new.
	timeline socialProvider: api.
	
	self assert: timeline loadToots equals: true.
	self assert: timeline toots size equals: 1.
	self assert: client lastGetUrl equals: 'https://mastodon.social/api/v1/timelines/public'