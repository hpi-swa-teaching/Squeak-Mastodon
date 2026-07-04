endpoints
getCurrentUser

	| credentials |
	credentials := self verifyCredentials.
	credentials isError ifTrue: [^ credentials].
	^ self getProfileFor: credentials value acct