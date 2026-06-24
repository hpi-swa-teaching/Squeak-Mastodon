render
getAccountMorph

	| accountMorph start stop text |
	text := MTUtils asTextFromHtml: '<b>', self object displayName, '</b> ', '<i>@', self object federatedUsername, '</i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object federatedUsername asString size.
	
	self makeClickable: text from: start to: stop for: self object and: MTMastodonApi getInstance getCurrentUser value id.
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph