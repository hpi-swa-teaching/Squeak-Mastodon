toot
toot

	self socialProvider isAuthenticated ifFalse: [^ false].
	(self socialProvider isKindOf: MTBlueSkyApi) ifTrue: [self tootToBlueSky] ifFalse: [self tootToMastodon].
	^ true