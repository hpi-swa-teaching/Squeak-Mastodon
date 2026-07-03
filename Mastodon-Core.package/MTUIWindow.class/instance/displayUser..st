render
displayUser: aUsername

	| user |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	user := self socialProvider getAccount: aUsername.
	user isError ifTrue: [
		self inform: 'An error occurred while loading user with screenName: ', aUsername.
		^ false].
	self loadProfileViewOf: user value.
	^ true