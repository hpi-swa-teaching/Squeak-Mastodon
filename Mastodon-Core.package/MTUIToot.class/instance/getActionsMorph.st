render
getActionsMorph

	self repostButton: MTUIRepostButton new.
	self starButton: MTUIStarButton new.
	actionsMorph := Morph new.
	actionsMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 1;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self repostButton render;
		addMorphBack: self starButton render.
	
	^ actionsMorph