as yet unclassified
loadMentionsView
	| mentionsTimelineView |
	mentionsTimelineView := MTUIMentionsTimeline new.
							
	mentionsTimelineView 
		mastodonApi: (self mastodonApi);
		loadTweets.
	
	self 
		loadView: mentionsTimelineView
		as: #mentionsView
		activate: #mentionsButton.