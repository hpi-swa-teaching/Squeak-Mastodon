initialization
initialize

	super initialize.
	self feedbackMorph: (TextMorph new contents: 'toot posted').
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addMorphBack: self feedbackMorph;
		addNewTootButton;
		addImageButton;
		addMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText);
		imageMorph: 'empty'.
	self tootSizeLabel: (TextMorph new contents: (self tootTextArea contents size asString, '/', self maxTextSize asString) asHtmlText).
	self addMorph: self tootSizeLabel.
	self feedbackMorph hide