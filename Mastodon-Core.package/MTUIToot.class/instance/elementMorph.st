render
elementMorph

	| postMorph accountMorph contentMorph reblogMorph media createdAtMorph actionsMorph |
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
	
	self determineInteractionType.
	accountMorph := self accountMorph.
	contentMorph := self contentMorph.
	reblogMorph := self reblogMorph.
	media := self media.
	createdAtMorph := self createdAtMorph.
	actionsMorph := self actionsMorph.
	
	accountMorph ifNotNil: [postMorph addMorphBack: accountMorph].
	contentMorph ifNotNil: [postMorph addMorphBack: contentMorph].
	reblogMorph ifNotNil: [postMorph addMorphBack: reblogMorph].
	media ifNotNil: [postMorph addMorphBack: media].
	createdAtMorph ifNotNil: [postMorph addMorphBack: createdAtMorph].
	actionsMorph ifNotNil: [postMorph addMorphBack: actionsMorph].
	
	^ postMorph