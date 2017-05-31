helpers
isAuthenticated
	token ifNotNil: [^ true].
	^ false