views
loadScreenshotView

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	MTScreenshot useMastodonCursor.
	^ true