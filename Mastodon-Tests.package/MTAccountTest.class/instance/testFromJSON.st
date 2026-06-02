json
testFromJSON

	| account |
	account := MTAccount from: DataProvider defaultAccountJSON.
	
	self assert: account id equals DataProvider defaultId.
	self assert: account note equals DataProvider defaultNote.
	self assert: account publicURL equals DataProvider defaultPublicURL.
	self assert: account displayName equals DataProvider defaultDisplayName.
	self assert: account username equals DataProvider defaultUsername.
	self assert: account createdAt equals DataProvider defaultCreatedAt.
	self assert: account federatedUsername equals DataProvider defaultFederatedUsername.
	self assert: account followingCount equals DataProvider defaultFollowingCount.
	self assert: account followersCount equals DataProvider defaultFollowersCount.
	self assert: account statusesCount equals DataProvider defaultStatusesCount.
	self assert: account avatarURL equals DataProvider avatarURL.
	self assert: account headerURL equals DataProvider headerURL