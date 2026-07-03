tests
testLoadComboBoxSelectsActiveSession

	| mastodon bluesky reloadedView |
	mastodon := MTMastodonApi new.
	mastodon
		username: 'Alice';
		baseURL: 'https://mastodon.social'.
	bluesky := MTBlueSkyApi new.
	bluesky
		username: 'bob.bsky.social';
		baseURL: 'bob.bsky.social'.

	view storeCurrentSession: mastodon.
	view storeCurrentSession: bluesky.

	MTProviderFactory blueSkyInstance: bluesky.
	MTSettingsStore default at: #provider put: 'bluesky'.
	MTSettingsStore default at: #baseURL put: 'bob.bsky.social'.

	reloadedView := MTUISettings new.

	self assert: reloadedView sessionsComboBox currentIndex equals: 2