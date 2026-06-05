views
loadScheduledTootsTimelineView
	| scheduledTootsTimelineView |
	self refreshProvider.
							
	scheduledTootsTimelineView := MTUIScheduledTootsTimeline new.
	scheduledTootsTimelineView mastodonApi: (self mastodonApi).
	scheduledTootsTimelineView load ifFalse: [^ false].
	
	self 
		loadView: scheduledTootsTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.
	self layoutChanged.