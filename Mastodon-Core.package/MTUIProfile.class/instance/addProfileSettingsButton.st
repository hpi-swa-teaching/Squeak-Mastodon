render
addProfileSettingsButton

	| button |
	button := self getProfileEditButton.
	self profileMorph addMorphFront: button.
	button position: self profileMorph topRight - self profileEditButtonOffset