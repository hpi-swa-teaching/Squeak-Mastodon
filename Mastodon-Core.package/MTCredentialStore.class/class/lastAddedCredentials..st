accessing
lastAddedCredentials: aCredential
	
	(self hasCredentials: aCredential) ifFalse: [^ self].
	^ lastAddedCredentials := aCredential 