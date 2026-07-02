accessing
mastodonApi: anObject

	super mastodonApi: anObject.
	searchTextField ifNotNil: [searchTextField helpText: self searchHelpText]