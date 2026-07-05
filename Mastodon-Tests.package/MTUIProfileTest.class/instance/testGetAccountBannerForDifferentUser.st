render
testGetAccountBannerForDifferentUser

	| profileView banner |
	profileView := self getProfileViewForSecondAccount.
	
	banner := profileView getAccountBanner.
	
	self assert: (banner submorphs includes: profileView interactionButtons).
	self deny: (banner submorphs includes: profileView settingsButtons)