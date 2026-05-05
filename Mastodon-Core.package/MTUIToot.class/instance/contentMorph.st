render
contentMorph
	| imageMorph |
	content := Morph new.
	content 
		layoutPolicy: TableLayout new;
		"listDirection: #topToBottom;"
		wrapDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 60@0;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		color: Color transparent.
		imageMorph := self imageMorph.
		imageMorph ifNotNil:  [content addMorphBack: imageMorph].
		content addMorphBack: self textMorph.
		content addMorphBack: self actionsMorph.
	
	^	 content