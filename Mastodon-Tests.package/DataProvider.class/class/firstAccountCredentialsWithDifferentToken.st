credentials
firstAccountCredentialsWithDifferentToken

	^ MTLoginCredentials
		for: self defaultBaseURL
		token: self secondToken