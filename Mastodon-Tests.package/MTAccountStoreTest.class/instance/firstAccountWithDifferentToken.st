defaults
firstAccountWithDifferentToken

	^ MTLoginCredentials
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider defaultBaseURL
		token: DataProvider secondToken