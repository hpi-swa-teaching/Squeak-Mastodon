demo login
testDemoURLStatus
	| mastodonApi url |
	MTSettingsStore reset.
	mastodonApi := MTMastodonApi with: (MTSettingsStore default at: #demoURL).
	url := mastodonApi buildUrl: '/health'.
	^ self assert: (mastodonApi getRequest: url) isNil not.