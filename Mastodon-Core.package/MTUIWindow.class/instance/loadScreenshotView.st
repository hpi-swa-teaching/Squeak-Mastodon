views
loadScreenshotView

	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	MTScreenshot useMastodonCursor.
	^ true