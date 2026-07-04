updating
updateTootSettingsForVisibility: aVisibility

	self visibilitySetting: aVisibility.
	
	(aVisibility = 'private' or: [aVisibility = 'direct']) ifTrue: [self quotePolicySetting: 'nobody']