updating
loadToots

	self socialProvider usesFeeds ifFalse: [
		self socialProvider token isNil ifTrue: [^ self loadPublicToots].
		^ super loadToots].
	self socialProvider isAuthenticated ifFalse: [^ false].
	self loadFeeds ifFalse: [^ false].
	^ self loadSelectedFeed