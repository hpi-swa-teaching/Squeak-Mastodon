helpers
testContainsEmptyFieldWithEmptyToken

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: ''.
	
	self assert: loginCredentials containsEmptyField