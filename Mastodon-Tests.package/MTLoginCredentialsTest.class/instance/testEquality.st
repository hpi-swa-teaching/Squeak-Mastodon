comparing
testEquality

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTDataProvider firstAccountCredentials.
	secondLoginCredentials := MTDataProvider firstAccountCredentials.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash