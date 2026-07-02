render
textMorph

	| platform since noteText |
	platform := (self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: ['Bluesky'] ifFalse: ['Mastodon'].
	since := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	noteText := self account note isEmpty ifTrue: [''] ifFalse: [self account note, '<br>'].
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: noteText, '<i><font color="#555555">on ', platform, ' since ', since, '</font></i>').
	text
		wrapFlag: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	^ text