helpers
assertAccount: aResultedAccount matches: anExpectedAccount

	self assert: aResultedAccount id equals: anExpectedAccount id.
	self assert: aResultedAccount username equals: anExpectedAccount username.
	self assert: aResultedAccount federatedUsername equals: anExpectedAccount federatedUsername.
	self assert: aResultedAccount displayName equals: anExpectedAccount displayName.
	self assert: aResultedAccount createdAt equals: anExpectedAccount createdAt.
	self assert: aResultedAccount followersCount equals: anExpectedAccount followersCount.
	self assert: aResultedAccount followingCount equals: anExpectedAccount followingCount.
	self assert: aResultedAccount statusesCount equals: anExpectedAccount statusesCount.
	self assert: aResultedAccount note equals: anExpectedAccount note.
	self assert: aResultedAccount url equals: anExpectedAccount url.
	self assert: aResultedAccount avatar equals: anExpectedAccount avatar.
	self assert: aResultedAccount header equals: anExpectedAccount header