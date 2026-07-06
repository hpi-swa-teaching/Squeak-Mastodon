helpers
testGetProfileText

	| profileView profileText |
	profileView := self getProfileViewForFirstAccount.
	
	profileText := profileView getProfileText.
	
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount displayName).
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount federatedUsername).
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount note asHtmlText asString).
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount statusesCount asString).
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount followingCount asString).
	self assert: (profileText asString includesSubstring: MTDataProvider firstAccount followersCount asString)