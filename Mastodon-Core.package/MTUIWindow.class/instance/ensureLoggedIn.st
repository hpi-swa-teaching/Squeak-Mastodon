helpers
ensureLoggedIn

	self mastodonApi hasToken ifTrue: [^ true].
	
	self informToLogIn.
	^ false