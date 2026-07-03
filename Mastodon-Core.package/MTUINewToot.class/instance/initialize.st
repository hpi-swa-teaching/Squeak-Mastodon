initialization
initialize

	super initialize.
	self feedbackMorph: (TextMorph new contents: 'toot posted').
	self titleMorph: (TextMorph new contents: '<b>New toot</b>' asHtmlText).
	self
		cellInset: 10;
		layoutInset: 20;
		addNewTootTextArea;
		addPrivacyButtons;
		addMorphBack: self feedbackMorph;
		addNewTootButton;
		addImageButtons;
		addMediaPreview;
		addMorph: self titleMorph.
		
	self visibilitySetting: 'public'.
	self quotePolicySetting: 'public'.
	
	self addMorph: self tootLengthLabel.
	self feedbackMorph hide