defaults
firstAccount

	^ MTLoginCredentials new
		createWithUsername: DataProvider defaultUsername
		baseURL: DataProvider defaultBaseURL
		token: DataProvider defaultToken