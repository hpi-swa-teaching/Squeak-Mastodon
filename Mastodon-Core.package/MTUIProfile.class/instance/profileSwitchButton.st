accessing-buttons
profileSwitchButton

	^ profileSwitchButton ifNil: [profileSwitchButton := self getProfileSwitchButton]