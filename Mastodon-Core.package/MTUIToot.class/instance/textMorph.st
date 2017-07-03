as yet unclassified
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	text := TextMorph new contentsWrapped: (
		'<b>' , self toot acct username , '</b> ',
		'<b><i><font color="#555555">@', self toot acct displayName , '</font></i></b>',
		'<br>' , self toot content, '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>') asTextFromHtml.
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
		
	^ text