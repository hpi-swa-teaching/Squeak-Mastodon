views
loadArchiveTimelineView
	| archiveView |
	self mastodonApi isAuthenticated ifFalse: [^false].
	archiveView := MTUIArchiveTimeline new mastodonApi: (self mastodonApi).
	archiveView loadArchived.
	
	self 
		loadView: archiveView
		as: #archiveView 
		activate: #archiveTabButton.