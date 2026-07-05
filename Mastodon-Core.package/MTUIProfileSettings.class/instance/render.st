render
render

	| container |
	container := self getProfileContainer
		addMorphBack: self toolbarButtons;
		addMorphBack: self avatarField;
		addMorphBack: self nameField;
		addMorphBack: self noteField;
		yourself.
	
	self addMorph: container