actions
loginWithOAuthCode

	| code |
	code := self getFormattedAuthorizationCode.
	self temporaryApi ifNil: [^ false].
	
	(self temporaryApi exchangeAuthorizationCode: code) ifNil: [^ false].
	self temporaryApi verifyCredentials ifNil: [^ false].
	^ true