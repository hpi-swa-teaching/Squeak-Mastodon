render
testGetAccountBannerNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getAccountBanner] raise: Error