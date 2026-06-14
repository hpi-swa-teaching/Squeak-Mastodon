render
render

	self container
		addMorphBack: self getSettingsToolbar;
		addMorphBack: self getEditableAvatar;
		addMorphBack: self getNameField;
		addMorphBack: self getNoteField.
	
	self addMorph: self container