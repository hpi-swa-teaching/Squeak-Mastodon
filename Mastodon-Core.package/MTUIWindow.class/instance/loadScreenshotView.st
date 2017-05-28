as yet unclassified
loadScreenshotView
	self mastodonApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	STScreenshot useTwitterCursor.