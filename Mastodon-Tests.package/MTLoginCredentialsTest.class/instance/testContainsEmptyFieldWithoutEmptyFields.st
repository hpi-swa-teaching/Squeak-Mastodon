helpers
testContainsEmptyFieldWithoutEmptyFields

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken.
	
	self deny: loginCredentials containsEmptyField