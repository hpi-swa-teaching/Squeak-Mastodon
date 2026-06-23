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
		color: Color transparent.
	
	{self repostButton. self heartButton. self replyButton} do: [:button | actionsMorph addMorphBack: button render].
	showArchiveButton ifTrue: [actionsMorph addMorphBack: self archiveButton render].
	
	^ actionsMorph