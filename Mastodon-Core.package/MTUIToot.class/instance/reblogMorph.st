render
reblogMorph

	self toot reblog ifNil: [^ nil].
	reblog := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot reblog content, '</b>').
	reblog
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ reblog