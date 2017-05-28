as yet unclassified
loadHomeTimelineView
	| homeTimelineView |
	homeTimelineView := MTUIHomeTimeline new.
							
	homeTimelineView 
		mastodonApi: (self mastodonApi);
		loadTweets.
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.