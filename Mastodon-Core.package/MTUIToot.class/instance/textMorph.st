as yet unclassified
textMorph
	| createdAt old |
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt).
	Transcript show: toot content.
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self toot acct username , '</b> ',
		'<b><i><font color="#555555">@', self toot acct displayName , '</font></i></b>',
		'<br>' , self toot content, '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	old := '<a href="https://google.de/', self toot acct displayName , '">test</a> lo','<font color="#555555">@' , self toot acct displayName , '</font>', '</a>' .
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: ('<p>Test </p>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text