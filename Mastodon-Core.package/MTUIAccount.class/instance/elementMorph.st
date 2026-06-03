render
elementMorph

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
	
	accountMorph := self accountMorph.
	noteMorph := self noteMorph.
	createdAtMorph := self createdAtMorph.
	actionsMorph := self actionsMorph.
	
	accountMorph ifNotNil: [profile addMorphBack: accountMorph].
	noteMorph ifNotNil: [profile addMorphBack: accountMorph].
	createdAtMorph ifNotNil: [profile addMorphBack: createdAtMorph].
	actionsMorph ifNotNil: [profile addMorphBack: actionsMorph].
	
	^ profile