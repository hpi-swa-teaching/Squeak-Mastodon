as yet unclassified
textMorph
	| createdAt text2|
	createdAt := MTUtils relativeTimeString: (MTUtils timestampFromString: self account createdAt).
	text :=  TextMorph new contentsWrapped: 'simple Text'.
	"text 
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill."
		
		
	text2 := TextMorph new contentsWrapped: (MTUITextFormatter asHtmlText: (
		'<b>' , self account username , '</b> ',
		 '<a href="MastodonUser:', self account displayName , '">', '<font color="#555555">@' , self account displayName , '</font>', '</a>' ,
		'<br>' , (self linkUrls: self account note), '<br>' , 
		'<i><font color="#555555">' , createdAt , '</font></i>')).
		
			
	^ text
	
	