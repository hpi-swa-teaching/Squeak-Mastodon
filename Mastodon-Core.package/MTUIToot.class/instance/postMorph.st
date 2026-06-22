render
postMorph

	postMorph ifNotNil: [^ postMorph].
	postMorph := AlignmentMorph new.
	postMorph
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 0;
		cellPositioning: #topLeft;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent.
	{self accountMorph. self contentMorph. self reblogMorph. self imageMorph. self dateMorph. self actionsMorph} do: [:morph | morph ifNotNil: [postMorph addMorphBack: morph]].
	
	^ postMorph