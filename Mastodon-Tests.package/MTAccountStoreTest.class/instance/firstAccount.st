defaults
firstAccount

	^ MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: self firstBaseURL
		token: self firstToken