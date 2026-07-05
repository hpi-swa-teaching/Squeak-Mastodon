render-container
testGetProfileContainerColor

	| profileSettingsView profileContainer |
	profileSettingsView := MTUIProfileSettings new.
	
	profileContainer := profileSettingsView getProfileContainer.
	
	self assert: profileContainer color equals: profileSettingsView profileBannerColor