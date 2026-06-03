render
postMorph

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
		color: Color transparent.
	
	self initInteraction.
	self initAccountMorph.
	self initTextMorph.
	self initReblogMorph.
	self initMedia.
	self initCreatedAtMorph.
	self initActionsMorph.
	
	post addMorphBack: self accountMorph.
	self textMorph ifNotNil: [self textMorph text isEmpty ifFalse: [post addMorphBack: self textMorph]].
	self reblogMorph ifNotNil: [post addMorphBack: self reblogMorph].
	self media ifNotNil: [post addMorphBack: self media].
	self createdAtMorph ifNotNil: [post addMorphBack: self createdAtMorph].
	post addMorphBack: actionsMorph.
	
	^ post