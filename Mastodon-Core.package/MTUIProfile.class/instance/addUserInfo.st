render
addUserInfo
	
	self profileMorph: nil.
	self profileMorph
		addMorphBack: self getSettingsToolbar;
		addMorphBack: self getAccountAvatarMorph;
		addMorphBack: self getProfileTextMorph.
	
	self addMorphBack: self profileMorph