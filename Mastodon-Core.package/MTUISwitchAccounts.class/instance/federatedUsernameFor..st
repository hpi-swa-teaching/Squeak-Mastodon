helpers
federatedUsernameFor: aCredential

	| account |
	account := aCredential account ifNil: [^ '@unknown'].
	
	^ account federatedUsername ifNil: ['@unknown']