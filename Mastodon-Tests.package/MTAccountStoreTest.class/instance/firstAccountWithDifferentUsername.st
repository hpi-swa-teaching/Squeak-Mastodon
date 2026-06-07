defaults
firstAccountWithDifferentUsername

	^ MTLoginCredentials
		createWithUsername: DataProvider secondUsername
		baseURL: DataProvider defaultBaseURL
		token: DataProvider defaultToken