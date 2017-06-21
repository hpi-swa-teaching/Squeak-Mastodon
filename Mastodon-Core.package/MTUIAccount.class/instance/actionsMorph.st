as yet unclassified
actionsMorph
	actions := Morph new.
	actions 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self followButton render;
		addMorphBack: self blockButton render.
		
	^ actions