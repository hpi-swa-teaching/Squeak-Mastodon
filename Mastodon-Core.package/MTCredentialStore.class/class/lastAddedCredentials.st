accessing
lastAddedCredentials
	
	
	(self hasCredentials: lastAddedCredentials) ifFalse: [^ lastAddedCredentials := self emptyLoginCredentials].
	^ lastAddedCredentials