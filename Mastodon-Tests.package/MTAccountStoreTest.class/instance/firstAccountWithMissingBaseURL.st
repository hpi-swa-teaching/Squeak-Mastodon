defaults
firstAccountWithMissingBaseURL

	^ MTLoginCredentials new
		createWithUsername: DataProvider defaultUsername
		baseURL: nil
		token: DataProvider defaultToken