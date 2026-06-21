helpers
refreshProvider
	self mastodonApi: MTProviderFactory providerFromSettings.
	self setLabel: self mastodonApi displayName.
	self refreshMenuButtons