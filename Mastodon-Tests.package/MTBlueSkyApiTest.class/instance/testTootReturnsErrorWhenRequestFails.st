tests
testTootReturnsErrorWhenRequestFails
	| api client result |
	client := MTBlueSkyMockWebClient new.
	client respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession' with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 400).
	api := self apiWithMockClient: client token: 'test-token'.

	result := api toot: 'hello bluesky'.

	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky post request failed'