accessing
mastodonProvider

	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: [''].
	baseURL isEmptyOrNil ifTrue: [baseURL := 'https://mastodon.world'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	
	(self mastodonInstance notNil and: [self mastodonInstance baseURL = baseURL]) ifTrue: [
		self mastodonInstance token: token.
		^ self mastodonInstance].
	
	mastodonInstance := MTMastodonApi with: baseURL token: token.
	^ self mastodonInstance