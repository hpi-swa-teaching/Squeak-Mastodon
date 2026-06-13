render
noteMorph

	| noteMorph |
	noteMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self object note).
	noteMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	noteMorph text isEmpty ifTrue: [^ nil] ifFalse: [^ noteMorph]