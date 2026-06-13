defaults
firstAccountWithDifferentToken

	^ MTLoginCredentials new
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider defaultBaseURL
		token: DataProvider secondToken