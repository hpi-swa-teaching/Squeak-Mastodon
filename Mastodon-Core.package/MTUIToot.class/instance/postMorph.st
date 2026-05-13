render
postMorph
	| contentMorph reblogMorph imageMorph createdAtMorph |
	post := AlignmentMorph new.
	post 
		layoutPolicy: TableLayout new;
		"listDirection: #topToBottom;"
		wrapDirection: #topToBottom;
		hResizing: #rigid;
		vResizing: #rigid;
		layoutInset: 0; 
		cellInset: 60@0;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self accountMorph.
	contentMorph := self contentMorph.
	self contentMorph ifNotNil: [post addMorphBack: self contentMorph].
	reblogMorph := self reblogMorph.
	reblogMorph ifNotNil: [post addMorphBack: reblogMorph].
	imageMorph := self imageMorph.
	imageMorph ifNotNil: [post addMorphBack: imageMorph].
	createdAtMorph := self createdAtMorph.
	createdAtMorph ifNotNil: [post addMorphBack: createdAtMorph].
	post addMorphBack: self actionsMorph.
		
	^ post