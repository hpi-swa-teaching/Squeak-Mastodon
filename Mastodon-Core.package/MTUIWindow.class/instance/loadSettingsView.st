views
loadSettingsView

	self refreshProvider.
	self loadView: (MTUISettings new mastodonApi: mastodonApi) as: #settingsView activate: #settingsButton