tests
testGetSavedFeedsFallsBackToOldPreferenceShape
	| api client result feeds |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getPreferences' with: self sampleOldPreferencesJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience' with: self sampleFeedGeneratorJson.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at%3A%2F%2Fdid%3Aplc%3Abob%2Fapp.bsky.feed.generator%2Fnews' with: '{"view":{"uri":"at://did:plc:bob/app.bsky.feed.generator/news","cid":"cid-news","did":"did:plc:bob","creator":{"did":"did:plc:bob","handle":"bob.bsky.social","displayName":"Bob"},"displayName":"News","indexedAt":"2026-06-19T12:00:00.000Z"},"isOnline":true,"isValid":true}'.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getSavedFeeds.
	
	self assert: result isSuccess equals: true.
	feeds := result value.
	self assert: feeds size equals: 3.
	self assert: feeds second displayName equals: 'Science'.
	self assert: feeds third displayName equals: 'News'
