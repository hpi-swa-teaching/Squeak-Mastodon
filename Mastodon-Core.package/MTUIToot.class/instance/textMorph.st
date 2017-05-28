as yet unclassified
textMorph
	| createdAt |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self toot user name , '</b> ',
		 '<a href="smallTweetUser:', self toot user screenName , '">', '<font color="#555555">@' , self toot user screenName , '</font>', '</a>' ,
		'<br>' , (self linkUrls: self toot text), '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text