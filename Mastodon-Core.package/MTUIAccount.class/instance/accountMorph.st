render
accountMorph

	| accountMorph |
	accountMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self object displayName, '</b> <a href="mastodonUser:', self object id, '">@', self object acct, '</a>').
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph