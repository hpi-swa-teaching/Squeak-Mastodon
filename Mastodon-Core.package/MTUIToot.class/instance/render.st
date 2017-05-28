as yet unclassified
render
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10; 
		cellInset: 0;
		wrapCentering: #leftTop;
		color: Color white;
		
		addMorphBack: self avatarMorph;
		addMorphBack: self contentMorph.