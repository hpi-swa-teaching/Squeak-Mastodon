render
initCreatedAt

	| date |
	date := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	self createdAt: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<i><font color="', self htmlGray, '">', date, '</font></i>')).
	self createdAt
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap