render
initContent

	self content: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content)).
	self content
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap