render
render

	| avatar |
	self
		listDirection: #leftToRight;
		layoutInset: 10.
	
	avatar := self avatarMorph.
	avatar ifNotNil: [self addMorphBack: avatar].
	self addMorphBack: self contentMorph.
	
	self layoutChanged