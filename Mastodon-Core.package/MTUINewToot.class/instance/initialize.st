initialization
initialize

	super initialize.
	self feedbackMorph: (TextMorph new contents: 'toot posted').
	self titleMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText).
	self media: OrderedCollection new.
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextarea;
		addPrivacyButtons;
		addMorphBack: self feedbackMorph;
		addNewTootButton;
		addImageButtons;
		addMediaPreview;
		addMorph: self titleMorph.
	self tootSizeLabel: (TextMorph new contents: (self tootTextArea contents size asString, '/', self maxTextSize asString) asHtmlText).
	self addMorph: self tootSizeLabel.
	self feedbackMorph hide