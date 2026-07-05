credentials
firstAccountCredentialsWithDifferentToken

	^ MTLoginCredentials
		for: self firstBaseURL
		token: self secondToken