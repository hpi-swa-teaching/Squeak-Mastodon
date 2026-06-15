render
getCreatedAtMorph

	| date createdAtMorph |
	date := MTUtils relativeTimeString: (MTUtils timestampFromString: self object createdAt).
	createdAtMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<i><font color="', self htmlGray, '">', date, '</font></i>').
	createdAtMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ createdAtMorph