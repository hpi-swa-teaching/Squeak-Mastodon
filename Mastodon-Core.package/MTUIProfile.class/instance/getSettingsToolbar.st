render
getSettingsToolbar

	| toolbar |
	toolbar := self getEmptySettingsToolbar.
	toolbar
		addMorphBack: self getProfileEditButton;
		addMorphBack: self getSwitchProfileButton.
	
	^ toolbar