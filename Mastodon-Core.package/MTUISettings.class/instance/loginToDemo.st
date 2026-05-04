actions
loginToDemo
	self mastodonApi baseURL: (MTSettingsStore default at: #demoURL).
	self mastodonApi token: (MTSettingsStore default at: #demoToken).
	self verifyAccount.