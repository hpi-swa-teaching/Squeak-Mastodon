actions
checkDisplayName
	
	self nameText contents size > self maximumDisplayNameLength ifTrue: [
		self inform: self tooLongUsernameInformMessage.
		^ false].
	^ true