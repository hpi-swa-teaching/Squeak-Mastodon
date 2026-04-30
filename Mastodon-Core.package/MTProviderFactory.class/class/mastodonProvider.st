accessing
mastodonProvider
	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: [''].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	
	(mastodonInstance notNil and: [mastodonInstance baseURL = baseURL])
		ifTrue: [
			mastodonInstance token: token.
			^ mastodonInstance].
			
	mastodonInstance := MTMastodonApi with: baseURL token: token.
	^ mastodonInstance