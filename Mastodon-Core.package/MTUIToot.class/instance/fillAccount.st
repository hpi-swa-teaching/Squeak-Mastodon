render
fillAccount

	self account: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot acct displayName, '</b> ', '<i><a href="mastodonUser:', self toot acct id, '">@', self toot acct acct, '</a>&nbsp;&nbsp;<font color="', self htmlGray, '">', self interaction, '</font></i>')).
	self account
		lock;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap