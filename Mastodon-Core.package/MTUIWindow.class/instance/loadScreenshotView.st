views
loadScreenshotView

	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	MTScreenshot useMastodonCursor