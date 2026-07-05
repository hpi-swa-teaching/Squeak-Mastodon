provider factory
testMastodonProviderDefaultsToMastodonWorld

	MTProviderFactory mastodonInstance: nil.
	MTSettingsStore default at: #baseURL put: ''.
	
	self assert: MTProviderFactory mastodonProvider baseURL equals: 'https://mastodon.world'