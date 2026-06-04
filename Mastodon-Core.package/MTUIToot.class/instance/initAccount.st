render
initAccount

	self account: (TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot account displayName, '</b> ', '<i><a href="mastodonUser:', self toot account id, '">@', self toot account federatedUsername, '</a><font color="', self htmlGray, '">', self interaction, '</font></i>')).
	self account
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap