defaults
firstAccountWithDifferentBaseURL

	^ MTLoginCredentials
		for: DataProvider secondBaseURL
		token: DataProvider defaultToken