render
testGetAccountBannerNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getAccountBanner notNil