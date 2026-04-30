views
loadHomeTimelineView
	| homeTimelineView |
	self refreshProvider.
	(self mastodonApi supportsFeature: #timeline)
		ifFalse: [self inform: 'Timeline not supported.'. ^ false].
	homeTimelineView := MTUIHomeTimeline new.
							
	homeTimelineView mastodonApi: (self mastodonApi).
	homeTimelineView loadToots ifFalse: [^ false].
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.
	self layoutChanged.