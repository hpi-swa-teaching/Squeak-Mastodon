render
reblogMorph

	reblogMorph ifNotNil: [^ reblogMorph].
	self toot reblog ifNil: [^ nil].
	reblogMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot reblog content, '</b>').
	reblogMorph
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ reblogMorph