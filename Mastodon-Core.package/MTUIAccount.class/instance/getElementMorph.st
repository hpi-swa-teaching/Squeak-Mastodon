render
getElementMorph

	| profile accountMorph noteMorph createdAtMorph actionsMorph |
	profile := AlignmentMorph new.
	profile
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
	
	accountMorph := self getAccountMorph.
	noteMorph := self getNoteMorph.
	createdAtMorph := self getCreatedAtMorph.
	actionsMorph := self getActionsMorph.
	
	accountMorph ifNotNil: [profile addMorphBack: accountMorph].
	noteMorph ifNotNil: [profile addMorphBack: noteMorph].
	createdAtMorph ifNotNil: [profile addMorphBack: createdAtMorph].
	actionsMorph ifNotNil: [profile addMorphBack: actionsMorph].
	
	^ profile