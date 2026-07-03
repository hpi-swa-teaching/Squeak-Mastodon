views
loadScreenshotView

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	MTScreenshot useMastodonCursor