render
contentMorph
	content ifNotNil: [^ content].
	content := AlignmentMorph new.
	content
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
		addMorphBack: self headerMorph;
		addMorphBack: self textMorph.
	^ content