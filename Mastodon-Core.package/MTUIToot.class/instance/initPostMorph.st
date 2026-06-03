render
initPostMorph

	| postMorph |
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
	
	self initInteraction.
	self initAccountMorph.
	self initTextMorph.
	self initReblogMorph.
	self initMedia.
	self initCreatedAtMorph.
	self initActionsMorph.
	
	postMorph addMorphBack: self accountMorph.
	self textMorph ifNotNil: [self textMorph text isEmpty ifFalse: [postMorph addMorphBack: self textMorph]].
	self reblogMorph ifNotNil: [postMorph addMorphBack: self reblogMorph].
	self media ifNotNil: [postMorph addMorphBack: self media].
	self createdAtMorph ifNotNil: [postMorph addMorphBack: self createdAtMorph].
	postMorph addMorphBack: actionsMorph.
	
	^ postMorph