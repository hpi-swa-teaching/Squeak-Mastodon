render
testGetGeneralAccountBannerNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getGeneralAccountBanner notNil