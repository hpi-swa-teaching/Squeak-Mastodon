views
loadTemplatesView
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self 
		loadView: (MTUITemplates with: mastodonApi)
		as: #templatesView 
		activate: #templatesButton.