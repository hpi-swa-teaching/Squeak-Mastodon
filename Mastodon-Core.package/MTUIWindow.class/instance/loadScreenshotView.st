views
loadScreenshotView

	self ensureLoggedIn ifFalse: [^ false].
	
	MTScreenshot useMastodonCursor