render
reblogMorph

	reblogMorph ifNotNil: [^ reblogMorph].
	self toot reblogged ifFalse: [^ nil].
	reblogMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot reblog content, '</b>').
	reblogMorph
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ reblogMorph