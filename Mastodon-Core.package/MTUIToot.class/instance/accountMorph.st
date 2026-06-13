render
accountMorph

	| accountMorph |
	accountMorph := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self object acct displayName, '</b> ', '<i><a href="mastodonUser:', self object acct id, '">@', self object acct acct, '</a><font color="', self htmlGray, '">', self interaction, '</font></i>').
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph