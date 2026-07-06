render
addSortFilterWithObservers: aCollection

	| sortFilter spacingMorph |
	sortFilter := MTUISortFilter new.
	sortFilter observers: aCollection.
	self addMorphBack: sortFilter.
	spacingMorph := Morph new
		color: Color veryVeryLightGray;
		height: 1;
		hResizing: #spaceFill.
	self addMorphBack: spacingMorph