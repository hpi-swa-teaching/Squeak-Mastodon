render
postMorph
	| contentMorph reblogMorph imageMorph createdAtMorph |
	post := AlignmentMorph new.
	post 
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
	contentMorph ifNotNil: [post addMorphBack: contentMorph].
	reblogMorph := self reblogMorph.
	reblogMorph ifNotNil: [post addMorphBack: reblogMorph].
	imageMorph := self imageMorph.
	imageMorph ifNotNil: [post addMorphBack: imageMorph].
	createdAtMorph := self createdAtMorph.
	createdAtMorph ifNotNil: [post addMorphBack: createdAtMorph].
	post addMorphBack: self actionsMorph.
		
	^ post