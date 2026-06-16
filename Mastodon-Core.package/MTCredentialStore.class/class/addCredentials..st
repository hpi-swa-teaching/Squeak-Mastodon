add/remove
addCredentials: aCredential

	aCredential containsEmptyField ifTrue: [^ self].
	
	self credentials add: aCredential.
	self lastAddedCredentials: aCredential