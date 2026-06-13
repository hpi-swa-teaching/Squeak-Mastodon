defaults
firstAccountWithMissingMissingToken

	^ MTLoginCredentials
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider defaultBaseURL
		token: nil