initialization
initialize

	super initialize.
	feedbackMorph := TextMorph new contents: 'toot posted'.
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addMorphBack: feedbackMorph;
		addNewTootButtons;
		addImageButton;
		tootSizeLabel: (TextMorph new contents: (tootTextArea contents size asString, '/500') asHtmlText);
		addMorph: tootSizeLabel;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText).
	
	feedbackMorph hide