toot
toot

	self socialProvider isAuthenticated ifFalse: [^ false].
	self socialProvider supportsVisibility
		ifTrue: [self tootToMastodon]
		ifFalse: [self tootToBlueSky].
	^ true