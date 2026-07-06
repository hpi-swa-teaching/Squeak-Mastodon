helpers
testGetProfileTextAsHtml

	| profileView profileText |
	profileView := self getProfileViewForFirstAccount.
	
	profileText := profileView getProfileTextAsHtml.
	
	self assert: (profileText includesSubstring: MTDataProvider firstAccount displayName).
	self assert: (profileText includesSubstring: MTDataProvider firstAccount federatedUsername).
	self assert: (profileText includesSubstring: MTDataProvider firstAccount note).
	self assert: (profileText includesSubstring: MTDataProvider firstAccount statusesCount asString).
	self assert: (profileText includesSubstring: MTDataProvider firstAccount followingCount asString).
	self assert: (profileText includesSubstring: MTDataProvider firstAccount followersCount asString)