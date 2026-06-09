defaults
firstAccountWithDifferentToken

	^ MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self secondToken