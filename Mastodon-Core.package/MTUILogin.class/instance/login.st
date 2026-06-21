actions
login
	
	| credentials |
	self loginWithOAuthCode ifFalse: [^ nil].
	
	credentials := self temporaryApi getCurrentCredentials.
	MTCredentialStore addCredentials: credentials.
	MTMastodonApi changeInstanceTo: credentials.
	self close.