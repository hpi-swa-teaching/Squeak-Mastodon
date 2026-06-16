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
		color: Color transparent;
		addMorphBack: self accountMorph.
	self contentMorph ifNotNil: [postMorph addMorphBack: self contentMorph].
	self imageMorph ifNotNil: [postMorph addMorphBack: self imageMorph].
	self dateMorph ifNotNil: [postMorph addMorphBack: self dateMorph].
	postMorph addMorphBack: self actionsMorph.
	
	^ postMorph