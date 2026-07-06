views
loadSettingsView

	self refreshProvider.
	self loadView: (MTUISettings with: self mastodonApi) as: #settingsView activate: #settingsButton