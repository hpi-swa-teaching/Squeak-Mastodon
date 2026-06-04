render
render

	| avatar |
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 0;
		cellPositioning: #topLeft;
		wrapCentering: #leftTop;
		color: Color white.
	
	avatar := self avatarMorph.
	avatar ifNotNil: [self addMorphBack: avatar].
	self addMorphBack: self contentMorph.
	
	self layoutChanged