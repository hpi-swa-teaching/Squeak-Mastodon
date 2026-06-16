render
render
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 10;
		wrapCentering: #leftTop;
		listCentering: #topLeft;
		color: Color white.
	self avatarMorph ifNotNil: [:a | self addMorphBack: a].
	self addMorphBack: self contentMorph.
	self layoutChanged