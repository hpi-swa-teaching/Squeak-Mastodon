helpers
testContainsEmptyFieldWithNilToken

	| loginCredentials |
	loginCredentials := MTLoginCredentials new
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: nil.
	
	self assert: loginCredentials containsEmptyField