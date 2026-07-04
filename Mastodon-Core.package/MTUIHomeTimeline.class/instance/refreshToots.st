updating
refreshToots

	self socialProvider usesFeeds ifFalse: [
		self socialProvider token isNil ifTrue: [^ self loadPublicToots].
		^ super refreshToots].
	^ false