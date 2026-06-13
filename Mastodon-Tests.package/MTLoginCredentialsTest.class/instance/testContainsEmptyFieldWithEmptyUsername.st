helpers
testContainsEmptyFieldWithEmptyUsername

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: ''
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField