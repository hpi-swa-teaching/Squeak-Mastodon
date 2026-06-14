helpers
testContainsEmptyFieldWithNilUsername

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: nil
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField