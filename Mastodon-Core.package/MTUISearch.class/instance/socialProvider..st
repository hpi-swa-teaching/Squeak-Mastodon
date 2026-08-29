accessing
socialProvider: anObject

	super socialProvider: anObject.
	self searchTextField ifNotNil: [self searchTextField helpText: self searchHelpText]