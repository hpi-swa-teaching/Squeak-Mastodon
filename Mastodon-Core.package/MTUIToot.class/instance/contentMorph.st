render
contentMorph
	content := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (self toot content)).
	content 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: ProportionalLayout;
 		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ content