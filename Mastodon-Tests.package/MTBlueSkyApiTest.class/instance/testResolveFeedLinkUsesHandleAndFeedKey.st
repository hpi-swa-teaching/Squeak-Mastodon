tests
testResolveFeedLinkUsesHandleAndFeedKey
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.identity.resolveHandle?handle=alice.bsky.social' with: '{"did":"did:plc:alice"}'.
	client respondToGet: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience' with: self sampleFeedGeneratorJson.
	api := self apiWithMockClient: client token: 'feed-token'.
	
	result := api feedFromUrlOrUri: 'https://bsky.app/profile/alice.bsky.social/feed/science'.
	
	self assert: result isSuccess equals: true.
	self assert: result value displayName equals: 'Science'.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.feed.getFeedGenerator?feed=at%3A%2F%2Fdid%3Aplc%3Aalice%2Fapp.bsky.feed.generator%2Fscience'
