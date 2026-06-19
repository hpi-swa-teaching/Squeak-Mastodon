defaults
firstAccountWithDifferentUsername

	^ MTLoginCredentials
		createWithUsername: self secondUsername
		baseURL: self firstBaseURL
		token: self firstToken