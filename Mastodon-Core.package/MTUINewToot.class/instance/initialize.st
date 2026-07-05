initialization
initialize

	super initialize.
	self feedbackMorph: (TextMorph new contents: 'toot posted').
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addMorphBack: self feedbackMorph;
		addNewTootButtons;
		addImageButton;
		tootSizeLabel: (TextMorph new contents: (self tootTextArea contents size asString, '/500') asHtmlText);
		addMorph: self tootSizeLabel;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText).
	
	self feedbackMorph hide