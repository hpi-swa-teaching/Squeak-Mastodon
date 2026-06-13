helpers
testContainsEmptyFieldWithNilBaseURL

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: nil
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField