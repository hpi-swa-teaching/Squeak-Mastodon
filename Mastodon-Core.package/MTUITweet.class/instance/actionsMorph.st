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
		addMorphBack: self retweetButton render ;
		addMorphBack: self heartButton render.
		
	^ actions