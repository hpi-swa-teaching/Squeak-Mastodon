tests
testRenderShowsFeedToolbarForBluesky

	| client api timeline toolbar buttons |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getPreferences'
		with: self samplePreferencesJson.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience'
		with: self sampleFeedGeneratorJson.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getTimeline?limit=30'
		with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	timeline := MTUIHomeTimeline new.
	timeline socialProvider: api.
	
	self assert: timeline loadToots equals: true.
	toolbar := timeline feedToolbar.
	buttons := toolbar submorphs.
	
	self assert: toolbar height equals: 40.
	self assert: buttons first width equals: 260.
	self assert: buttons first height equals: 32.
	self assert: buttons second width equals: 32.
	self assert: buttons third width equals: 32