render
postMorph

	| contentMorph reblogMorph imageMorph createdAtMorph |
	post := AlignmentMorph new.
	self post
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
	contentMorph := self contentMorph.
	contentMorph ifNotNil: [self post addMorphBack: contentMorph].
	reblogMorph := self reblogMorph.
	reblogMorph ifNotNil: [self post addMorphBack: reblogMorph].
	imageMorph := self imageMorph.
	imageMorph ifNotNil: [self post addMorphBack: imageMorph].
	createdAtMorph := self createdAtMorph.
	createdAtMorph ifNotNil: [self post addMorphBack: createdAtMorph].
	self post addMorphBack: self actionsMorph.
	
	^ self post