actions
addCredentials: aCredential
	
	aCredential containsEmptyField ifTrue: [^ self].
	
	self credentials add: aCredential