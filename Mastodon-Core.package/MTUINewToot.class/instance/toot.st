toot
toot
	self mastodonApi isAuthenticated ifFalse: [^ false].
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifTrue: [self tootToBlueSky]
		ifFalse: [self tootToMastodon]