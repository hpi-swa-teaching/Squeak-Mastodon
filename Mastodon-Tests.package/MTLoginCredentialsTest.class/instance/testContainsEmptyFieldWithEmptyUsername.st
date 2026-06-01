helpers
testContainsEmptyFieldWithEmptyUsername

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: ''
		baseURL: self firstBaseURL
		token: self firstToken.
		
	self assert: loginCredentials containsEmptyField