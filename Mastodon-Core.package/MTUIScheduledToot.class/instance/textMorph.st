render
textMorph

	| scheduledAt |
	scheduledAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot scheduledAt).
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self user displayName, '</b> ', '<i><a href="mastodonUser:', self user id, '">@', self user acct, '</a></i>', '<br>', self toot params text, '<br>', '<i><font color="#555555">', scheduledAt, '</font></i>').
	text
		wrapFlag: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
	
	^ text