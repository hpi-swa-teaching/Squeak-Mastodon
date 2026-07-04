authentication
testGetCurrentDidCachesDid

	| api client first second |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	api := self apiWithMockClient: client token: 'test-token'.
	
	first := api getCurrentDid.
	client failGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'.
	second := api getCurrentDid.
	
	self assert: first equals: 'did:plc:alice'.
	self assert: second equals: 'did:plc:alice'