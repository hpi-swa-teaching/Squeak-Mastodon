render
activateSession: aSession

	| provider |
	(aSession isKindOf: MTBlueSkyApi)
		ifTrue: [
			provider := 'bluesky'.
			MTProviderFactory blueSkyInstance: aSession]
		ifFalse: [
			provider := 'mastodon'.
			MTProviderFactory mastodonInstance: aSession].
	
	MTSettingsStore default at: #provider put: provider.
	MTSettingsStore default at: #baseURL put: aSession baseURL.
	MTSettingsStore default at: #token put: aSession token.
	MTSettingsStore default at: #refreshToken put: aSession refreshToken