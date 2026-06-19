render
contentMorph

	content := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: self toot content).
	content
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ content