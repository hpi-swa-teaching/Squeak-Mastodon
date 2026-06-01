defaults
firstAccountWithMissingBaseURL

	^ MTLoginCredentials
		createWithUsername: self firstUsername
		baseURL: nil
		token: self firstToken