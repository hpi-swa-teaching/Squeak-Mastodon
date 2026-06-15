views
loadScreenshotView

	self mastodonApi hasToken ifFalse: [^false].
	
	MTScreenshot useMastodonCursor