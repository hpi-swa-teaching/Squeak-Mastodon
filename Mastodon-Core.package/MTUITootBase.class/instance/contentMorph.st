render
contentMorph

	contentMorph ifNotNil: [^ contentMorph].
	contentMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self content).
	contentMorph
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ contentMorph