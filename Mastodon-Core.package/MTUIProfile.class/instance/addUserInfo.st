render
addUserInfo

	| userInfo currentUserId |
	currentUserId := MTMastodonApi getInstance getCurrentUser value id.
	userInfo := self getGeneralUserInfo.
	
	currentUserId = self account id
		ifTrue: [userInfo addMorph: self getSettingsToolbar]
		ifFalse: [userInfo addMorphBack: self getInteractionButtons].
		
	self addMorphBack: userInfo