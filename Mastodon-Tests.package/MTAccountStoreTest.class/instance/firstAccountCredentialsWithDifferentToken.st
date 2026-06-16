defaults
firstAccountCredentialsWithDifferentToken

	^ MTLoginCredentials
		for: DataProvider defaultBaseURL
		token: DataProvider secondToken