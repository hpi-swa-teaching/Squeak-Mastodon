tests
testGetFeedLoadsCustomFeed
	| api client result toots |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30' with: self sampleTimelineJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api getFeed: 'at://did:plc:alice/app.bsky.feed.generator/science'.
	
	self assert: result isSuccess equals: true.
	toots := result value.
	self assert: toots size equals: 1.
	self assert: toots first content equals: 'Hello Bluesky'.
	self assert: (client headerAt: 'atproto-proxy') equals: 'did:web:api.bsky.app#bsky_appview'.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getFeed?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience&limit=30'
