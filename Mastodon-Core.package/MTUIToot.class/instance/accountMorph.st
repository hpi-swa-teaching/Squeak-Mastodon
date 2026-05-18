render
accountMorph
	account := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (
		'<b>' , self toot acct displayName , '</b> ',
		'<i><a href="mastodonUser:', self toot acct id , '">@', self toot acct acct , '</a></i>')).
	account 
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
		
	^ account