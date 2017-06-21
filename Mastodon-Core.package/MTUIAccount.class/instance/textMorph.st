as yet unclassified
textMorph
	| createdAt |
	"createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self toot createdAt)."
	createdAt := 'test time'.
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self account username , '</b> ',
		 '<a href="MastodonUser:', self account displayName , '">', '<font color="#555555">@' , self account displayName , '</font>', '</a>' ,
		'<br>' , (self linkUrls: self account note), '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
		
	^ text