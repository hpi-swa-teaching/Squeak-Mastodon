render
textMorph

	| platform since note |
	platform := (self mastodonApi isKindOf: MTBlueSkyApi) ifTrue: ['Bluesky'] ifFalse: ['Mastodon'].
	since := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	note := self account note isEmpty ifTrue: [''] ifFalse: [self account note, '<br>'].
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: note, '<i><font color="#555555">on ', platform, ' since ', since, '</font></i>').
	text
		wrapFlag: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	^ text