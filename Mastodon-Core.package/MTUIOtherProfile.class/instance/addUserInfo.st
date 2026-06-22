render
addUserInfo

	| userInfo |
	userInfo := self addGeneralUserInfo.
	
	userInfo addMorphBack: (self addInteractionButtonsFor: self account).
	self addMorphBack: userInfo