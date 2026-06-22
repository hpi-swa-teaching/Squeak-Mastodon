actions
checkDisplayName

	self profileNameText size > 30 ifTrue: [
		self inform: 'Not more than 30 characters username allowed.'.
		^ false].
	^ true