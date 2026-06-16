credentials
firstAccountCredentials

	^ MTLoginCredentials
		for: self defaultBaseURL
		token: self defaultToken