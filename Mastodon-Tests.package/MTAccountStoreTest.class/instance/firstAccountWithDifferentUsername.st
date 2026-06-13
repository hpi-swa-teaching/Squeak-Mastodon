defaults
firstAccountWithDifferentUsername

	^ MTLoginCredentials new
		createWithUsername: DataProvider secondUsername
		baseURL: DataProvider defaultBaseURL
		token: DataProvider defaultToken