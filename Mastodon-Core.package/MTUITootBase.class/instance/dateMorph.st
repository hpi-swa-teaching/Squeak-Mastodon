render
dateMorph

	| date |
	dateMorph ifNotNil: [^ dateMorph].
	date := MTUtils relativeTimeString: (MTUtils timestampFromString: self postedAt).
	dateMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<i><font color="#555555">', date, '</font></i>').
	dateMorph
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ dateMorph