views
loadScreenshotView

	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	MTScreenshot useMastodonCursor