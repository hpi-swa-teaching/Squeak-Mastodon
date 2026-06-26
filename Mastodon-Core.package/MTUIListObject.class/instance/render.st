render
render
	
	{self getAvatarMorph. self getElementMorph} do: [:each | each ifNotNil: [self addMorphBack: each]].
	
	self layoutChanged