render
getSettingsToolbar

	| toolbar |
	toolbar := self getEmptySettingsToolbar.
	toolbar
		addMorphBack: self getSaveButton.
	
	^ toolbar