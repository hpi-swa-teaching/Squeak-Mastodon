actions
testOpenProfileSettingsNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView openProfileSettings] raise: Error