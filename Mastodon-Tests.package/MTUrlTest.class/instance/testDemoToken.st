demo
testDemoToken
	| mastodonApi |
	MTSettingsStore reset.
	mastodonApi := MTMastodonApi 
		with: (MTSettingsStore default at: #demoURL) 
		token: (MTSettingsStore default at: #demoToken).
	self assert: (mastodonApi verifyCredentials) isNil not.