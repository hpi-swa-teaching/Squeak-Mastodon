comparing
testInequalityOnBaseURL

	| firstLoginCredentials secondLoginCredentials |
	firstLoginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	secondLoginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self secondBaseURL
		token: self firstToken.
	
	self deny: firstLoginCredentials = secondLoginCredentials.
	self deny: (firstLoginCredentials equals: secondLoginCredentials).
	self deny: firstLoginCredentials hash = secondLoginCredentials hash