profile endpoints
testGetCurrentUserReturnsAccount

	| api client result account |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/com.atproto.server.getSession'
		with: self sampleSessionJson.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getProfile?actor=alice.bsky.social'
		with: self sampleProfileJson.
	api := self apiWithMockClient: client token: 'current-user-token'.
	result := api getCurrentUser.
	account := result value.
	self assert: result isSuccess equals: true.
	self assert: account class equals: MTAccount.
	self assert: account id equals: 'did:plc:alice'.
	self assert: account displayName equals: 'Alice Example'