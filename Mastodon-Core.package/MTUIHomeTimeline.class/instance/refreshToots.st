updating
refreshToots
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifFalse: [^ super refreshToots].
	^ false
