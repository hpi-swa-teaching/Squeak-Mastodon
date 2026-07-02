updating
loadToots

	(self mastodonApi isKindOf: MTBlueSkyApi) ifFalse: [
		self mastodonApi token isNil ifTrue: [^ self loadPublicToots].
		^ super loadToots].
	self mastodonApi isAuthenticated ifFalse: [^ false].
	self loadFeeds ifFalse: [^ false].
	^ self loadSelectedFeed