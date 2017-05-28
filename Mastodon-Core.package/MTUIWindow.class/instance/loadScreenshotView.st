as yet unclassified
loadScreenshotView
	self twitterApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	STScreenshot useTwitterCursor.