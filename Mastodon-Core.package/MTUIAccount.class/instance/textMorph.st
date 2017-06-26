as yet unclassified
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	
	text := TextMorph new contentsWrapped: (
		'<b>' , self account displayName , '</b> @', self account acct , 
		'<br>' , self account note, '<br>' , 
		'<i><font color="#555555">' , 'on Mastodon since ', createdAt , '</font></i>') asTextFromHtml.
		
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
			
	^ text
	
	