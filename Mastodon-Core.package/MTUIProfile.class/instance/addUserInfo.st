render
addUserInfo

	| userInfo currentUserId |
	currentUserId := MTMastodonApi getInstance getCurrentUser value id.
	userInfo := self addGeneralUserInfo.
	
	currentUserId = self account id
		ifTrue: [userInfo addMorph: self getSettingsToolbar]
		ifFalse: [userInfo addMorphBack: (self addInteractionButtonsFor: self account)].
		
	self addMorphBack: userInfo