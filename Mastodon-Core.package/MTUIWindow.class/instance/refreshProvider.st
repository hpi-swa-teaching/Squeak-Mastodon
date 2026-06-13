helpers
refreshProvider

	self mastodonApi: MTMastodonApi getInstance.
	self setLabel: self mastodonApi displayName