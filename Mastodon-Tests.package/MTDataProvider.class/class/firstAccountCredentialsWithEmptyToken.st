credentials
firstAccountCredentialsWithEmptyToken

	^ MTLoginCredentials
		for: self firstBaseURL
		token: ''