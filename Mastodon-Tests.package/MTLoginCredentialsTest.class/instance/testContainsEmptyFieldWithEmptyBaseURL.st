helpers
testContainsEmptyFieldWithEmptyBaseURL

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: ''
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField