views
loadSettingsView

	self refreshProvider.
	self loadView: (MTUISettings with: self socialProvider) as: #settingsView activate: #settingsButton