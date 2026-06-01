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
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText);
		imageMorph: 'empty'.
	tootSizeLabel := TextMorph new contents: (tootTextArea contents size asString, '/', self maxTextSize asString) asHtmlText.
	self addMorph: tootSizeLabel.
	feedbackMorph hide