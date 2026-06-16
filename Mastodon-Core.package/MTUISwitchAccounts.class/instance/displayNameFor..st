helpers
displayNameFor: credentials

	| account |
	account := self accountFor: credentials.
	account ifNil: [^ 'Unknown Account'].
	
	^ account displayName ifNil: ['Unknown Account']