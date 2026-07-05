credentials
firstAccountCredentialsWithDifferentBaseURL

	^ MTLoginCredentials
		for: self secondBaseURL
		token: self firstToken