render
contentMorph
	content := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (self toot content)).
	content 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
 		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ content