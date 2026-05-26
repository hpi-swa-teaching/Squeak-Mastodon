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
	
	self fillInteraction.
	self fillAccount.
	self fillContent.
	self fillReblog.
	self fillMedia.
	self fillCreatedAt.
	
	post addMorphBack: self account.
	self content ifNotNil: [self content text isEmpty ifFalse: [post addMorphBack: self content]].
	self reblog ifNotNil: [post addMorphBack: self reblog].
	self media ifNotNil: [post addMorphBack: self media].
	self createdAt ifNotNil: [post addMorphBack: self createdAt].
	post addMorphBack: self actionsMorph.
	
	^ post