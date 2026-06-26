render
addUserInfo

	| userInfo |
	userInfo := self addGeneralUserInfo.
	
	userInfo addMorph: self getSettingsToolbar.
	self addMorphBack: userInfo