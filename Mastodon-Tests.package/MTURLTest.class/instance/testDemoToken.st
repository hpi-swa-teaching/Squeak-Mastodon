as yet unclassified
testDemoToken
	| mastodonApi |
	MTSettingsStore reset.
	mastodonApi := MTMastodonApi 
		with: (MTSettingsStore default at: #demoURL) 
		token: (Smalltalk at: #DemoLoginToken).
	self assert: (mastodonApi verifyCredentials) isNil not.