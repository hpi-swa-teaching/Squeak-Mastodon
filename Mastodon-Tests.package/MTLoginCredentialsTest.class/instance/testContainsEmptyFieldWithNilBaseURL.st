helpers
testContainsEmptyFieldWithNilBaseURL

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: nil
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField