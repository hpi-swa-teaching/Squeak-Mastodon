as yet unclassified
initialize 
	super initialize.

	self 
		addMorph: (TextMorph new contents: '<b>New tweet</b>' asHtmlText);
		cellInset: 10;
		layoutInset: 20;
		addNewTweetTextarea;
		addNewTweetButtons.