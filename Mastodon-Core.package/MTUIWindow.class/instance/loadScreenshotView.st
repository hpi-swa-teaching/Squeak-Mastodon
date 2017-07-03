as yet unclassified
loadScreenshotView
	self mastodonApi isAuthenticated ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	MTScreenshot useMastodonCursor.