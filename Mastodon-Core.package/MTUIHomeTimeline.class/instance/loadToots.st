updating
loadToots
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifFalse: [^ super loadToots].
	self mastodonApi isAuthenticated ifFalse: [^ false].
	self loadFeeds ifFalse: [^ false].
	^ self loadSelectedFeed
