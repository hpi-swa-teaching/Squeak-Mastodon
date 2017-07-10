as yet unclassified
initialize 
	super initialize.

	self 
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText);
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addNewTootButtons;
		addImageButton.