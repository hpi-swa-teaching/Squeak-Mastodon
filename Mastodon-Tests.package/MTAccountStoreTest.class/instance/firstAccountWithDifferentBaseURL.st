defaults
firstAccountWithDifferentBaseURL

	^ MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self secondBaseURL
		token: self firstToken