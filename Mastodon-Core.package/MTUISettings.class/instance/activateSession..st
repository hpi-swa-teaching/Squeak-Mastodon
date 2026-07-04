render
activateSession: aSession

	| provider |
	provider := aSession providerName.
	provider = 'bluesky'
		ifTrue: [MTProviderFactory blueSkyInstance: aSession]
		ifFalse: [MTProviderFactory mastodonInstance: aSession].
	
	MTSettingsStore default at: #provider put: provider.
	MTSettingsStore default at: #baseURL put: aSession baseURL.
	MTSettingsStore default at: #token put: aSession token.
	MTSettingsStore default at: #refreshToken put: aSession refreshToken