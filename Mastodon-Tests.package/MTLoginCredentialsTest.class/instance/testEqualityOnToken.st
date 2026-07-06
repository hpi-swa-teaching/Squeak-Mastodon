comparing
testEqualityOnToken

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTDataProvider firstAccountCredentials.
	
	secondLoginCredentials := MTDataProvider firstAccountCredentials token: MTDataProvider secondToken.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash