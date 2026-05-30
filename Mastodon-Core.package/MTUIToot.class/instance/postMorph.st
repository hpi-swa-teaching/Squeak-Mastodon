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
	self initAccount.
	self initContent.
	self initReblog.
	self initMedia.
	self initCreatedAt.
	self initActionsMorph.
	
	post addMorphBack: self account.
	self content ifNotNil: [self content text isEmpty ifFalse: [post addMorphBack: self content]].
	self reblog ifNotNil: [post addMorphBack: self reblog].
	self media ifNotNil: [post addMorphBack: self media].
	self createdAt ifNotNil: [post addMorphBack: self createdAt].
	post addMorphBack: actions.
	
	^ post