views
loadScheduledTootsTimelineView
	| scheduledTootsTimelineView user |
	self refreshProvider.
							
	scheduledTootsTimelineView := MTUIScheduledTootsTimeline new.
	scheduledTootsTimelineView mastodonApi: (self mastodonApi).
	
	"""user := self mastodonApi getAccount: self mastodonApi username.
	user isError ifTrue: [ 
		self inform: ('An error occured while loading user with screenName: ' , self mastodonApi username).
		^false].
	scheduledTootsTimelineView user: user."""
	
	scheduledTootsTimelineView load ifFalse: [^ false].
	
	self 
		loadView: scheduledTootsTimelineView
		as: #scheduledTootsTimelineView 
		activate: #scheduledTootsTimelineButton.
	self layoutChanged.