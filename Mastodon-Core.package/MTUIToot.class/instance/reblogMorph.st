render
reblogMorph

	self toot reblog ifNil: [^ nil].
	self reblog: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot reblog content, '</b>')).
	self reblog
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ self reblog