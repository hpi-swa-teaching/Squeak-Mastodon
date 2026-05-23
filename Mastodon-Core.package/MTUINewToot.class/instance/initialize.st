initialization
initialize
	super initialize.
		 
	self cellInset: 10;
		 layoutInset: 20;
		 addNewTootTextarea;
		 tootSizeLabel: (TextMorph new contents: (tootTextArea contents size asString , '/500') asHtmlText);
		 addMorphBack: tootSizeLabel;
		 
		addNewTootButtons;
		 addImageButton;
		
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText).