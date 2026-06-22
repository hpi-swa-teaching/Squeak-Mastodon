comparing
testEqualityOnToken

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := DataProvider firstAccountCredentials.
	
	secondLoginCredentials := DataProvider firstAccountCredentials token: DataProvider secondToken.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash