render-buttons
getToolbarButtons

	^ self getToolbarContainer
		addMorphBack: self closeButton;
		addMorphBack: self saveButton