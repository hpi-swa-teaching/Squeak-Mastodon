render
testGetGeneralAccountBannerNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getGeneralAccountBanner] raise: Error