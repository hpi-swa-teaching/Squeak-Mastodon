views
loadArchiveView
	| archiveView |
	self mastodonApi isAuthenticated ifFalse: [^false].
	archiveView := MTUIArchive with: mastodonApi.
	
	self 
		loadView: archiveView
		as: #archiveView 
		activate: #archiveTabButton.