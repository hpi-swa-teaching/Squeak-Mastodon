render
actionsMorph

	actionsMorph ifNotNil: [^ actionsMorph].
	actionsMorph := Morph new.
	actionsMorph
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
		addMorphBack: self heartButton render;
		addMorphBack: self replyButton render.
	showArchiveButton ifTrue: [actionsMorph addMorphBack: self archiveButton render].
	
	^ actionsMorph