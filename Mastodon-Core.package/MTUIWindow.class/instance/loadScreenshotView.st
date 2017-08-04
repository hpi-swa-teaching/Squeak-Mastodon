views
loadScreenshotView
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	MTScreenshot useMastodonCursor.