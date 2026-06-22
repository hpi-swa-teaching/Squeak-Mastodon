helpers
getCurrentCredentials

	^ MTLoginCredentials
		baseUrl: self  baseUrl
		token: self token
		account: self getCurrentUser value