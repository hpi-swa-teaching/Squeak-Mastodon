render
getActionsMorph

	self reblogButton: MTUIReblogButton new.
	self starButton: MTUIStarButton new.
	self commentsButton: MTUICommentsButton new.
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
		addMorphBack: self reblogButton render;
		addMorphBack: self starButton render;
		addMorphBack: self commentsButton render.
	
	^ actionsMorph