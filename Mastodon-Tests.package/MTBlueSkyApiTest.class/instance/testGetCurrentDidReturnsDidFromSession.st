authentication
testGetCurrentDidReturnsDidFromSession

	| api client did |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	api := self apiWithMockClient: client token: 'test-token'.
	
	did := api getCurrentDid.
	
	self assert: did equals: 'did:plc:alice'