comparing
testEquality

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := DataProvider firstAccountCredentials.
	secondLoginCredentials := DataProvider firstAccountCredentials.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash