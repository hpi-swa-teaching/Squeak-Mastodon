render
initCreatedAtMorph

	| date |
	date := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	self createdAtMorph: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<i><font color="', self htmlGray, '">', date, '</font></i>')).
	self createdAtMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap