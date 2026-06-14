initialization
initialize
	super initialize.
	self cellInset: 10;
		 layoutInset: 20;
		 addNewTootTextarea;
		 addNewTootButtons;
		 addImageButton;
		
		tootSizeLabel: (TextMorph new contents: (tootTextArea contents size asString , '/500') asHtmlText);
		 addMorph: tootSizeLabel;
		
		reloadMentionTimeline: false;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText)