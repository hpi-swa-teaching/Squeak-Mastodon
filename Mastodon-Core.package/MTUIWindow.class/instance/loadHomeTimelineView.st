as yet unclassified
loadHomeTimelineView
	| homeTimelineView |
	homeTimelineView := MTUIHomeTimeline new.
							
	homeTimelineView mastodonApi: (self mastodonApi).
	homeTimelineView loadToots ifFalse: [^ false].
	
	self 
		loadView: homeTimelineView
		as: #homeTimelineView 
		activate: #homeTimelineButton.
	self layoutChanged.