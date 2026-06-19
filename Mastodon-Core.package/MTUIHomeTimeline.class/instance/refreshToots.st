updating
refreshToots
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifFalse: [^ super refreshToots].
	selectedFeed ifNil: [^ false].
	selectedFeed isTimeline ifTrue: [^ super refreshToots].
	^ self loadSelectedFeed
