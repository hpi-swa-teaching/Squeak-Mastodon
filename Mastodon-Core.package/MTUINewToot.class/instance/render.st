render
render

	self
		cellInset: 10;
		layoutInset: 20.
	
	self 
		addMorphBack: self tootLengthLabel;
		addMorphBack: self getNewTootTextArea;
		addMorphBack: self getPrivacyButtons;
		addMorphBack: self feedbackMorph;
		addMorphBack: self addNewTootButton;
		addMorphBack: self addImageButtons;
		addMorphBack: self addMediaPreview;
		addMorph: self titleMorph.