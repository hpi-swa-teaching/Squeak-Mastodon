defaults
firstAccountWithMissingBaseURL

	^ MTLoginCredentials
		createWithUsername: DataProvider defaultUsername
		baseURL: nil
		token: DataProvider defaultToken