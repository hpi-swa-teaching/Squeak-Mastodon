views
loadTemplatesView

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	self loadView: (MTUITemplates with: self mastodonApi) as: #templatesView activate: #templatesButton