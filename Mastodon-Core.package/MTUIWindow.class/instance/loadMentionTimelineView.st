views
loadMentionTimelineView
	| mentionTimelineView |
	self refreshProvider.
	"mentionView := MTUIMention with: mastodonApi.
	mentionView mtuiWindow: self.
	self loadView: mentionView as: #mentionView activate: #mentionButton"
	
	
	mentionTimelineView := MTUIMentionTimeline new.
							
	mentionTimelineView 
		mastodonApi: (self mastodonApi);
		mtuiWindow: self;
		loadMentions.
	
	self 
		loadView: mentionTimelineView
		as: #mentionTimelineView
		activate: #mentionButton.
