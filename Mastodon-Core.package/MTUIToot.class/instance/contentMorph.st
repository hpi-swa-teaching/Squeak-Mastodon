render
contentMorph

	self content: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content)).
	self content
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ self content