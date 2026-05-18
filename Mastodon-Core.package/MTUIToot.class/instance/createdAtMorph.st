render
createdAtMorph
	| date |
	date := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	createdAt := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: ('<i><font color="#555555">' , date , '</font></i>')).
	createdAt 
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
		
	^ createdAt