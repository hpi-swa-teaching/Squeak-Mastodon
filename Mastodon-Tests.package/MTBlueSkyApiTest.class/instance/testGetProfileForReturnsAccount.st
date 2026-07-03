tests
testGetProfileForReturnsAccount

	| api client result account |
	client := MTBlueSkyMockWebClient new.
	client
		respondToGet: 'https://bsky.social/xrpc/app.bsky.actor.getProfile?actor=alice.bsky.social'
		with: self sampleProfileJson.
	api := self apiWithMockClient: client token: 'profile-token'.
	
	result := api getProfileFor: 'alice.bsky.social'.
	account := result value.
	
	self assert: result isSuccess equals: true.
	self assert: client lastGetUrl equals: 'https://bsky.social/xrpc/app.bsky.actor.getProfile?actor=alice.bsky.social'.
	self assert: (client headerAt: 'Authorization') equals: 'Bearer profile-token'.
	self assert: account class equals: MTAccount.
	self assert: account id equals: 'did:plc:alice'.
	self assert: account username equals: 'alice.bsky.social'.
	self assert: account acct equals: 'alice.bsky.social'.
	self assert: account displayName equals: 'Alice Example'.
	self assert: account followersCount equals: 10