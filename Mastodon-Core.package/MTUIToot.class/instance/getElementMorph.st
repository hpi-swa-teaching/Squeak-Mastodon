render
getElementMorph

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
	accountMorph := self getAccountMorph.
	contentMorph := self getContentMorph.
	reblogMorph := self getReblogMorph.
	media := self getMedia.
	createdAtMorph := self getCreatedAtMorph.
	actionsMorph := self getActionsMorph.
	
	accountMorph ifNotNil: [postMorph addMorphBack: accountMorph].
	contentMorph ifNotNil: [postMorph addMorphBack: contentMorph].
	reblogMorph ifNotNil: [postMorph addMorphBack: reblogMorph].
	media ifNotNil: [postMorph addMorphBack: media].
	createdAtMorph ifNotNil: [postMorph addMorphBack: createdAtMorph].
	actionsMorph ifNotNil: [postMorph addMorphBack: actionsMorph].
	
	^ postMorph