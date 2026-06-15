render
render

	| avatarMorph elementMorph |
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 10;
		cellPositioning: #topLeft;
		color: Color white.
	
	avatarMorph := self getAvatarMorph.
	elementMorph := self getElementMorph.
	
	avatarMorph ifNotNil: [self addMorphBack: avatarMorph].
	elementMorph ifNotNil: [self addMorphBack: elementMorph].
	
	self layoutChanged