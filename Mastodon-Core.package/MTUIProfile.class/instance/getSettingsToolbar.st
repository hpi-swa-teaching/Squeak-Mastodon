render
getSettingsToolbar

	^ self getToolbarContainer
		addMorphBack: self getProfileEditButton;
		addMorphBack: self getProfileSwitchButton;
		listCentering: #center