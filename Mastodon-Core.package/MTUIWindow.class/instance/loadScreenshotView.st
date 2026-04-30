views
loadScreenshotView
	self refreshProvider.
	(self mastodonApi supportsFeature: #screenshot)
		ifFalse: [self inform: 'Screenshot not supported.'. ^ false].
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	MTScreenshot useMastodonCursor.