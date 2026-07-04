updating
updateQuotePolicy

	
	(self visibilitySetting = 'private' or: [self visibilitySetting = 'direct']) ifTrue: [self quotePolicySetting: 'nobody']