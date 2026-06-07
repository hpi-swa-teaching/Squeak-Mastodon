json
testFromJson

	| account |
	account := MTAccount from: DataProvider defaultAccountJsonObject.
	
	self assert: account avatar = DataProvider defaultAvatarUrl.
	self assert: account createdAt = DataProvider defaultAccountCreatedAt.
	self assert: account displayName = DataProvider defaultDisplayName.
	self assert: account federatedUsername = DataProvider defaultFederatedUsername.
	self assert: account followersCount = DataProvider defaultFollowersCount.
	self assert: account followingCount = DataProvider defaultFollowingCount.
	self assert: account header = DataProvider defaultHeaderUrl.
	self assert: account id = DataProvider defaultAccountId.
	self assert: account note = DataProvider defaultNote.
	self assert: account statusesCount = DataProvider defaultStatusesCount.
	self assert: account url = DataProvider defaultAccountUrl.
	self assert: account username = DataProvider defaultUsername