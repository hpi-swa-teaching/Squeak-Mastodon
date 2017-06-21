as yet unclassified
textMorph
	| createdAt notUsed|
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	
	text := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self account displayName , '</b> @', self account acct , 
		'<br>' , self account note, '<br>' , 
		'<i><font color="#555555">' , 'on Mastodon since ', createdAt , '</font></i>')).
		
	"hard to comment out because of apostrophes, that's why it's in an unsused variable... "
	notUsed := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<a href="MastodonUser:', self account displayName , '">', '<font color="#555555">@' , self account displayName , '</font>', '</a>' 
		)).
		
	text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
			
	^ text
	
	