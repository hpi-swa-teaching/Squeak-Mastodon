tests
testTootEscapesSpecialCharacters
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse successWith: '{"uri":"at://did:plc:alice/app.bsky.feed.post/abc"}').
	api := self apiWithMockClient: client token: 'test-token'.

	result := api toot: 'say "hi"'.

	self assert: result isSuccess equals: true.
	self assert: (client lastPostContent includesSubstring: 'say \"hi\"')