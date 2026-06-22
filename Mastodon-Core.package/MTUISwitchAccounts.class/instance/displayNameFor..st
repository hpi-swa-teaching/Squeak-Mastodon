helpers
displayNameFor: aCredential

	| account |
	account := self accountFor: aCredential.
	account ifNil: [^ 'Unknown Account'].
	
	account displayName isEmpty ifTrue: [^ self federatedUsernameFor: aCredential].
	^ account displayName