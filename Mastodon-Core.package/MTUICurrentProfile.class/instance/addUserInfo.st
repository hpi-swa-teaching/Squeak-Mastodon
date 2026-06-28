render
addUserInfo

	| userInfo |
	userInfo := self getGeneralUserInfo.
	
	userInfo addMorph: self getSettingsToolbar.
	self addMorphBack: userInfo