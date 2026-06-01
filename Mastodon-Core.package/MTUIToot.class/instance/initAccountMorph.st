render
initAccountMorph

	self accountMorph: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot acct displayName, '</b> ', '<i><a href="mastodonUser:', self toot acct id, '">@', self toot acct acct, '</a><font color="', self htmlGray, '">', self interaction, '</font></i>')).
	self accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap