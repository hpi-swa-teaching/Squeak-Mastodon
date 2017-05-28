as yet unclassified
loadSettingsView
	self 
		loadView: (MTUISettings with: twitterApi)
		as: #settingsView 
		activate: #settingsButton.