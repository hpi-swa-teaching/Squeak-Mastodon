render
testGetAccountBannerForCurrentUser

	| profileView banner |
	profileView := self getProfileViewForFirstAccount.
	
	banner := profileView getAccountBanner.
	
	self assert: (banner submorphs includes: profileView settingsButtons).
	self deny: (banner submorphs includes: profileView interactionButtons)