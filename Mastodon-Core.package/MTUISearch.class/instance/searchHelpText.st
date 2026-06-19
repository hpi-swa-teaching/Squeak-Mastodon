accessing
searchHelpText
	^ (self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: ['handle']
		ifFalse: ['@User@Domain']