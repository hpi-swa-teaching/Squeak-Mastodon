render
textMorph

	| platform since noteText |
	platform := self socialProvider displayName.
	since := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	noteText := self account note isEmpty ifTrue: [''] ifFalse: [self account note, '<br>'].
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: noteText, '<i><font color="#555555">on ', platform, ' since ', since, '</font></i>').
	self text
		wrapFlag: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	^ self text