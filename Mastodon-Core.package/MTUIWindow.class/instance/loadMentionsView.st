as yet unclassified
loadMentionsView
	| mentionsTimelineView |
	mentionsTimelineView := MTUIMentionsTimeline new.
							
	mentionsTimelineView 
		mastodonApi: (self mastodonApi);
		loadToots.
	
	self 
		loadView: mentionsTimelineView
		as: #mentionsView
		activate: #mentionsButton.