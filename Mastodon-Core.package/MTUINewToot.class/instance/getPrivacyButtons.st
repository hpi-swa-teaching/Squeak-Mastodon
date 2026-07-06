render-buttons
getPrivacyButtons

	^ self getButtonContainer
		addMorphBack: self visibilityButton;
		addMorphBack: self whoCanQuoteButton