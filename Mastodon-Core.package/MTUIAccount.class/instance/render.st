render
render

	self
		removeAllMorphs;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 0;
		cellPositioning: #topLeft;
		wrapCentering: #leftTop;
		listCentering: #topLeft;
		color: Color white;
		addMorphBack: self avatarMorph;
		addMorphBack: self contentMorph