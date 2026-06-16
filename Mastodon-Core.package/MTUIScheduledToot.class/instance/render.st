render
render

	self
		listDirection: #leftToRight;
		layoutInset: 10.
	
	self avatarMorph ifNotNil: [self addMorphBack: self avatarMorph].
	self addMorphBack: self contentMorph.
	
	self layoutChanged