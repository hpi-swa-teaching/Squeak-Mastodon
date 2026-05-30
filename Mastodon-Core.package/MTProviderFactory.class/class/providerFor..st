accessing
providerFor: aSymbol
	aSymbol = #bluesky ifTrue: [^ self blueSkyProvider].
	^ self mastodonProvider