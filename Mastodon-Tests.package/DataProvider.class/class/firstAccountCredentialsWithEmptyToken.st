credentials
firstAccountCredentialsWithEmptyToken

	^ MTLoginCredentials
		for: self defaultBaseURL
		token: ''