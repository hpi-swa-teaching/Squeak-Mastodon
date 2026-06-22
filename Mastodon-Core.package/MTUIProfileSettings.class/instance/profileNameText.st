edit states
profileNameText

	^ self editedDisplayName ifNil: [self account displayName]