render
reblogMorph
	self toot reblog ifNil: [^ nil].
	reblog := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (
		'<b>' , self toot reblog content , '</b>' )).
	reblog 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
 		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ reblog