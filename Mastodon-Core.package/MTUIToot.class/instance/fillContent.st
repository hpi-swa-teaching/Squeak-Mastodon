render
fillContent

	self content: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content)).
	self content
		lock;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap