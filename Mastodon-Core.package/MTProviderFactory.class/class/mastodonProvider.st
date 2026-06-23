accessing
mastodonProvider
	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: [''].
	baseURL isEmpty ifTrue: [baseURL := 'https://mastodon.world'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	
	(mastodonInstance notNil and: [mastodonInstance baseURL = baseURL])
		ifTrue: [
			mastodonInstance token: token.
			^ mastodonInstance].
			
	mastodonInstance := MTMastodonApi with: baseURL token: token.
	^ mastodonInstance