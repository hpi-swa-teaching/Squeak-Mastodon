views
loadSettingsView

	self refreshProvider.
	self loadView: (MTUISettings with: mastodonApi) as: #settingsView activate: #settingsButton