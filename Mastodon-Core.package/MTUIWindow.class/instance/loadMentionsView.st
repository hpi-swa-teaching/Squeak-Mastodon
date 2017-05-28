as yet unclassified
loadMentionsView
	| mentionsTimelineView |
	mentionsTimelineView := MTUIMentionsTimeline new.
							
	mentionsTimelineView 
		twitterApi: (self twitterApi);
		loadTweets.
	
	self 
		loadView: mentionsTimelineView
		as: #mentionsView
		activate: #mentionsButton.