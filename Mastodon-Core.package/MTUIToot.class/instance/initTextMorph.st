render
initTextMorph

	self textMorph: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content removeClass: 'quote-inline')).
	self textMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap