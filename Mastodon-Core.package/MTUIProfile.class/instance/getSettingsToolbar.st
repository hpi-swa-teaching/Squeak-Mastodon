render
getSettingsToolbar

	| toolbar |
	toolbar := self getToolbarContainer.
	toolbar
		addMorphBack: self getProfileEditButton;
		addMorphBack: self getProfileSwitchButton;
		listCentering: #center.
	
	^ toolbar