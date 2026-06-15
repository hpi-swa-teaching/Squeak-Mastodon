render
getContentMorph

	| contentMorph |
	contentMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self object content removeClass: 'quote-inline').
	contentMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	contentMorph text isEmpty ifTrue: [^ nil] ifFalse: [^ contentMorph]