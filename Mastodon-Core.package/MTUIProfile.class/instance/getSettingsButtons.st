render-buttons
getSettingsButtons

	^ self getSettingsContainer
		addMorphBack: self profileEditButton;
		addMorphBack: self profileSwitchButton