defaults
firstAccountWithMissingUsername

	^ MTLoginCredentials new
		createWithUsername: nil
		baseURL: DataProvider defaultBaseURL
		token: DataProvider defaultToken