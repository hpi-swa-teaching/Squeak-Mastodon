accessing-buttons
profileEditButton

	^ profileEditButton ifNil: [profileEditButton := self getProfileEditButton]