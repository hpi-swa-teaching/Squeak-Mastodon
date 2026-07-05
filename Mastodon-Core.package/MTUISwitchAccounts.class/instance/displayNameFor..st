helpers
displayNameFor: aCredential

	| account |
	account := aCredential account ifNil: [^ 'Unknown Account'].
	
	account displayName ifNil: [^ self federatedUsernameFor: aCredential].
	^ account displayName