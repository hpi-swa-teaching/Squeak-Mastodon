render
render

	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 10;
		cellPositioning: #topLeft;
		color: Color white;
		addMorphBack: self initAvatarMorph;
		addMorphBack: self postMorph.
	
	self layoutChanged