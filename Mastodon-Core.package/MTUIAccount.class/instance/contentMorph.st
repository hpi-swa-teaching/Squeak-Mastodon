render
contentMorph

	self content: (Morph new
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self textMorph;
		yourself).
	self content addMorphBack: self actionsMorph.
	
	^ self content