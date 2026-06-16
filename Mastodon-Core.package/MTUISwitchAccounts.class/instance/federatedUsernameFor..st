helpers
federatedUsernameFor: credentials

	| account |
	account := self accountFor: credentials.
	account ifNil: [^ '@unknown'].
	
	^ account federatedUsername ifNil: ['@unknown']