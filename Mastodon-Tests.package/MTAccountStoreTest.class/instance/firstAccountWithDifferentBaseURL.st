defaults
firstAccountWithDifferentBaseURL

	^ MTLoginCredentials
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider secondBaseURL
		token: DataProvider defaultToken