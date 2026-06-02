comparing
testEqualityOnToken

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	secondLoginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self secondToken.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash