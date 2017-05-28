as yet unclassified
loadHomeTimelineView
	| homeTimelineView |
	homeTimelineView := MTUIHomeTimeline new.
							
	homeTimelineView 
		mastodonApi: (self mastodonApi);
		loadToots.
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.