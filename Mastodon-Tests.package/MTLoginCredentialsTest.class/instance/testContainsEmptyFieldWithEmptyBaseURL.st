helpers
testContainsEmptyFieldWithEmptyBaseURL

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: ''
		token: self firstToken.
	
	self assert: loginCredentials containsEmptyField