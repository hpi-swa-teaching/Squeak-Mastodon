defaults
firstAccountWithMissingMissingToken

	^ MTLoginCredentials new
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider defaultBaseURL
		token: nil