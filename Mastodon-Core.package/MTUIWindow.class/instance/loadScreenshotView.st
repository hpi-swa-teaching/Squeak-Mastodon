as yet unclassified
loadScreenshotView
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	MTScreenshot useMastodonCursor.