render
contentMorph

	| imageMorph |
	content := Morph new.
	content
		layoutPolicy: TableLayout new;
		wrapDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: self textMorph.
	"listDirection: #topToBottom;"
	imageMorph := self imageMorph.
	imageMorph ifNotNil: [content addMorphBack: imageMorph].
	content addMorphBack: self actionsMorph.
	
	^ content