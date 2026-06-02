defaults
firstAccountWithMissingUsername

	^ MTLoginCredentials
		createWithUsername: nil
		baseURL: DataProvider defaultBaseURL
		token: DataProvider defaultToken