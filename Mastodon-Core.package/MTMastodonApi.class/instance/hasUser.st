accessing
hasUser
"isAuthenticated statt clientID?"
	clientID ifNotNil: [^ true].
	^ false