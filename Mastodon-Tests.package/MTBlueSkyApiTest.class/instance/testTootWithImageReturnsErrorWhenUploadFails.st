posting
testTootWithImageReturnsErrorWhenUploadFails

	| api client result |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client postResponse: (MTBlueSkyMockResponse failureWith: '' code: 500).
	api := self apiWithMockClient: client token: 'test-token'.
	
	result := api toot: 'look at this' withImage: (Form extent: 4 @ 4 depth: 32).
	
	self assert: result isError equals: true.
	self assert: result error equals: 'BlueSky image upload failed'