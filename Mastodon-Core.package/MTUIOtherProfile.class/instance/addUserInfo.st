render
addUserInfo

	| userInfo actionsMorph |
	actionsMorph := self addInteractionButtonsFor: self user.
	userInfo := self addGeneralUserInfo.
	
	userInfo addMorphBack: actionsMorph.
	self addMorphBack: userInfo.