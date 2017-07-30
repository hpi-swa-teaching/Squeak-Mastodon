render
actionsMorph
	actions := Morph new.
	actions 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 1;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self repostButton render ;
		addMorphBack: self heartButton render.
		
	^ actions