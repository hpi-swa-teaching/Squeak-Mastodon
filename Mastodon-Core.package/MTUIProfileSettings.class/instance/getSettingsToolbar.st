render
getSettingsToolbar

	| toolbar |
	toolbar := self getToolbarContainer.
	toolbar
		addMorphBack: self getCloseButton;
		addMorphBack: self getSaveButton.
	
	^ toolbar