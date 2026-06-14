edit states
profileNameText

	^ self editedDisplayName ifNil: [account displayName]