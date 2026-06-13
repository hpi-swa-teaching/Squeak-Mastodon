comparing
testEquality

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	secondLoginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self assert: firstLoginCredentials = secondLoginCredentials.
	self assert: firstLoginCredentials equals: secondLoginCredentials.
	self assert: firstLoginCredentials hash equals: secondLoginCredentials hash