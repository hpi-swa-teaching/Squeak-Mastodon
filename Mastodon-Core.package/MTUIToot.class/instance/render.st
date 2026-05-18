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
		wrapCentering: #leftTop;
		listCentering: #topLeft;
		color: Color white;
		
		addMorphBack: self avatarMorph;
		addMorphBack: self postMorph.
		
self layoutChanged.