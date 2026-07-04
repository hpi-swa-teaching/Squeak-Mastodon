logout
testLogoutRemovesOnlyActiveSession

	| a b sessions |
	a := MTMastodonApi new.
	a token: 'token-a'.
	a baseURL: 'https://mastodon.social'.
	b := MTMastodonApi new.
	b token: 'token-b'.
	b baseURL: 'https://mastodon.social'.
	self view storeCurrentSession: a.
	self view storeCurrentSession: b.
	MTProviderFactory mastodonInstance: a.
	MTSettingsStore default at: #provider put: 'mastodon'.
	MTSettingsStore default at: #baseURL put: 'https://mastodon.social'.
	MTSettingsStore default at: #token put: 'token-a'.
	self view socialProvider: a.
	
	self view logout.
	
	sessions := MTSettingsStore default at: #sessions ifAbsent: [OrderedCollection new].
	self assert: sessions size equals: 1.
	self assert: sessions first == b.
	self assert: MTProviderFactory providerFromSettings == b.
	self assert: (MTSettingsStore default at: #token) equals: 'token-b'