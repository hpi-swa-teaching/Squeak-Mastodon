as yet unclassified
loadHomeTimelineView
	| homeTimelineView |
	homeTimelineView := MTUIHomeTimeline new.
							
	homeTimelineView 
		twitterApi: (self twitterApi);
		loadTweets.
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.