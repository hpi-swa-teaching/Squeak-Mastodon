actions
getCurrentCredentials

	^ MTLoginCredentials
		for: self mastodonApi baseUrl
		token: self mastodonApi token
		with: self mastodonApi getCurrentUser value