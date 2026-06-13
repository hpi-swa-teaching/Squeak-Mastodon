render
accountMorph

	| accountMorph |
	accountMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self object account displayName, '</b> ', '<i><a href="mastodonUser:', self object account id, '">@', self object account federatedUsername, '</a><font color="', self htmlGray, '">', self interaction, '</font></i>').
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph