actions
checkNote

	self profileNoteText size > 160 ifTrue: [
		self inform: 'Not more than 160 characters description allowed.'.
		^ false].
	^ true