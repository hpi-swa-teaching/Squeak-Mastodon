render
render

	self
		cellInset: 10;
		layoutInset: 20.
	
	self
		addMorphBack: self titleMorph;
		addMorphBack: self characterLengthLabel;
		addMorphBack: self getTootTextArea;
		addMorphBack: self getPrivacyButtons;
		addMorphBack: self feedbackMorph;
		addMorphBack: self tootButton;
		addMorphBack: self getImageButtons;
		addMorphBack: self mediaPreview