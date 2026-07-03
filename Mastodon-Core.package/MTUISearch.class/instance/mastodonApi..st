accessing
mastodonApi: anObject

	super mastodonApi: anObject.
	self searchTextField ifNotNil: [self searchTextField helpText: self searchHelpText]