render
addUserInfo

	| userInfo |
	userInfo := self getGeneralUserInfo.
	
	userInfo addMorphBack: self getInteractionButtons.
	self addMorphBack: userInfo