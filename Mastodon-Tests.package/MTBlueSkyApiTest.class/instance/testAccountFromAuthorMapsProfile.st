tests
testAccountFromAuthorMapsProfile

	| api account |
	api := MTBlueSkyApi new.
	account := api accountFromAuthor: self sampleAuthor.
	
	self assert: account class equals: MTAccount.
	self assert: account id equals: 'did:plc:alice'.
	self assert: account username equals: 'alice.bsky.social'.
	self assert: account acct equals: 'alice.bsky.social'.
	self assert: account displayName equals: 'Alice Example'.
	self assert: account createdAt equals: '2026-05-04T13:00:00.000Z'.
	self assert: account avatar equals: 'https://cdn.bsky.app/avatar.jpg'.
	self assert: account followersCount equals: 10.
	self assert: account followingCount equals: 4.
	self assert: account statusesCount equals: 23