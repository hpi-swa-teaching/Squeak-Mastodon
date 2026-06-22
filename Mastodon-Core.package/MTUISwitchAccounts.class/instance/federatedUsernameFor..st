helpers
federatedUsernameFor: aCredential

	| account |
	account := self accountFor: aCredential.
	account ifNil: [^ '@unknown'].
	
	^ account federatedUsername ifNil: ['@unknown']