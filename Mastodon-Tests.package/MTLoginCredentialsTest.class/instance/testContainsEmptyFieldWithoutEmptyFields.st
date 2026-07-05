helpers
testContainsEmptyFieldWithoutEmptyFields

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self deny: loginCredentials containsEmptyField