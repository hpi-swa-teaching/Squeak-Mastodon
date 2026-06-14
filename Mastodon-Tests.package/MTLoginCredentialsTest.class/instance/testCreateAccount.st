initialization
testCreateAccount

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self assert: loginCredentials username equals: self firstUsername.
	self assert: loginCredentials baseURL equals: self firstBaseURL.
	self assert: loginCredentials token equals: self firstToken