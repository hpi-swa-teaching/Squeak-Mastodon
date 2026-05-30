render
initContent

	self content: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content removeClass: 'quote-inline')).
	self content
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap