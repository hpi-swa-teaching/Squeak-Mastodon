views
loadMentionsView
	| mentionsTimelineView |
	self refreshProvider.
	(self mastodonApi supportsFeature: #mentions)
		ifFalse: [self inform: 'Mentions not supported.'. ^ false].
	mentionsTimelineView := MTUIMentionsTimeline new.
							
	mentionsTimelineView 
		mastodonApi: (self mastodonApi);
		loadToots.
	
	self 
		loadView: mentionsTimelineView
		as: #mentionsView
		activate: #mentionsButton.