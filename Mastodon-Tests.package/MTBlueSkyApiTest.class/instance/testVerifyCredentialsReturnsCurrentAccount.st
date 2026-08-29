authentication
testVerifyCredentialsReturnsCurrentAccount

	| api client result account |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	api := self apiWithMockClient: client token: 'session-token'.
	
	result := api verifyCredentials.
	account := result value.
	
	self assert: result isSuccess equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/com.atproto.server.getSession'.
	self assert: (client headerAt: 'Authorization') equals: 'Bearer session-token'.
	self assert: account class equals: MTAccount.
	self assert: account id equals: 'did:plc:alice'.
	self assert: account username equals: 'alice.bsky.social'.
	self assert: account acct equals: 'alice.bsky.social'.
	self assert: account displayName equals: 'alice.bsky.social'