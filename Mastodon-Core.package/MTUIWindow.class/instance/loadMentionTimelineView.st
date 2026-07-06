views
loadMentionTimelineView

	| mentionTimelineView |
	self refreshProvider.
	mentionTimelineView := MTUIMentionTimeline new.
	
	mentionTimelineView
		mastodonApi: self mastodonApi;
		mtuiWindow: self;
		loadMentions.
	
	self loadView: mentionTimelineView as: #mentionTimelineView activate: #mentionButton