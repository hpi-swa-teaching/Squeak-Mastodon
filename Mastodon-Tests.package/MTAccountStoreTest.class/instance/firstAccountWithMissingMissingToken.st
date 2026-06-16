defaults
firstAccountWithMissingMissingToken

	^ MTLoginCredentials
		for: DataProvider defaultBaseURL
		token: nil