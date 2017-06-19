as yet unclassified
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self toot acct username , '</b> ',
		 '<a href="smallTweetUser:', self toot acct displayName , '">', '<font color="#555555">@' , self toot acct displayName , '</font>', '</a>' ,
		'<br>' , (self linkUrls: self toot content), '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text