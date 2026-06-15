views
loadScheduledTootsTimelineView
	| scheduledTootsTimelineView user |
	self refreshProvider.
							
	scheduledTootsTimelineView := MTUIScheduledTootsTimeline new.
	scheduledTootsTimelineView mastodonApi: (self mastodonApi).
	
	user := self mastodonApi getCurrentUser value.
	scheduledTootsTimelineView user: user.
	
	scheduledTootsTimelineView load ifFalse: [^ false].
	scheduledTootsTimelineView renderScheduled.
	
	self 
		loadView: scheduledTootsTimelineView
		as: #scheduledTootsTimelineView 
		activate: #scheduledTootsTimelineButton.
	self layoutChanged.