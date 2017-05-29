accessing
hasUser
"isAuthenticated statt clientID?"
	token ifNotNil: [^ true].
	^ false