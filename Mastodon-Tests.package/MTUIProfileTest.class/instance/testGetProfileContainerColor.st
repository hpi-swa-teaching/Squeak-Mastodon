render-container
testGetProfileContainerColor

	| profileView profileContainer |
	profileView := self getProfileViewForFirstAccount.
	
	profileContainer := profileView getProfileContainer.
	
	self assert: profileContainer color equals: profileView profileBannerColor