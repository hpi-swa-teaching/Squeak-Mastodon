render
initActionsMorph

	self repostButton: MTUIRepostButton new.
	self heartButton: MTUIStarButton new.
	self actions: Morph new.
	self actions
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 1;
		cellPositioning: #topLeft;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self repostButton render;
		addMorphBack: self heartButton render