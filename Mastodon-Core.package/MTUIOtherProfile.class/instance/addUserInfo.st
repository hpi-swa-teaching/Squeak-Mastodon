render
addUserInfo

	| userInfo actionsMorph |
	actionsMorph := self addInteractionButtonsFor: self user.
	userInfo := self addGeneralUserInfo.
	
	userInfo addMorphBack: actionsMorph.
	self addMorphBack: userInfo.
	"actionsMorph := self addProfileInteractionButtonsFor: self user.
	self addMorphBack: actionsMorph"