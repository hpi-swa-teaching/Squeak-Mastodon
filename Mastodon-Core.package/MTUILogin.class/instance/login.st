actions
login
	
	| credentials |
	self loginWithOAuthCode ifFalse: [^ nil].
	
	credentials := self temporaryApi getCurrentCredentials.
	MTCredentialStore getInstance addCredentials: credentials.
	MTMastodonApi changeInstanceTo: credentials.
	self close.