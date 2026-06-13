helpers
testContainsEmptyFieldWithNilUsername

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: nil
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField