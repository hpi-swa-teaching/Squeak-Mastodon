accessing
mastodonProvider
	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: [''].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	^ MTMastodonApi with: baseURL token: token