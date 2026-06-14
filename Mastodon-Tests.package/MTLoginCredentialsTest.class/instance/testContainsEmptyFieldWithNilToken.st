helpers
testContainsEmptyFieldWithNilToken

	| loginCredentials |
	loginCredentials := MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: nil.
	
	self assert: loginCredentials containsEmptyField