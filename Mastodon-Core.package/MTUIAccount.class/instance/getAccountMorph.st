render
getAccountMorph

	| accountMorph |
	accountMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self object displayName, '</b> <a href="mastodonUser:', self object id, '">@', self object federatedUsername, '</a>').
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph