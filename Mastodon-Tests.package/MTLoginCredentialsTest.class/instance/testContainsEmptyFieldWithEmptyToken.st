helpers
testContainsEmptyFieldWithEmptyToken

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: ''.
		
	self assert: loginCredentials containsEmptyField