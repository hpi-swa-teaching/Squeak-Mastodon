render
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (
		'<b>' , self toot acct displayName , '</b> ',
		'<i><a href="mastodonUser:', self toot acct id , '">@', self toot acct acct , '</a></i>',
		'<br>' , self toot content, '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text