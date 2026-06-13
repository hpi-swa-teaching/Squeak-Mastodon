defaults
firstAccountWithDifferentBaseURL

	^ MTLoginCredentials new
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider secondBaseURL
		token: DataProvider defaultToken