render
getAccountMorph

	| accountMorph start stop text |
	text := MTUtils asTextFromHtml: '<b>', self object displayName, '</b> ', '<i>@', self object federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj | self owner owner owner owner loadProfileViewOf: self object];
			yourself)
		from: start
		to: stop.
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph