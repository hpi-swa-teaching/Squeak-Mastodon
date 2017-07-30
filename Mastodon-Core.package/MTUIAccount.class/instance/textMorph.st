render
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (
		'<b>' , self account displayName , '</b> <a href="mastodonUser:', self account id , '">@', self account acct , '</a>' , 
		'<br>' , self account note, '<br>' , 
		'<i><font color="#555555">' , 'on Mastodon since ', createdAt , '</font></i>')).
		
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
			
	^ text
	
	