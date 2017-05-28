as yet unclassified
loadSettingsView
	self 
		loadView: (MTUISettings with: mastodonApi)
		as: #settingsView 
		activate: #settingsButton.