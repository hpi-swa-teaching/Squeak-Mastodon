views
loadHomeTimelineView

	| homeTimelineView |
	self refreshProvider.
	homeTimelineView := MTUIHomeTimeline new.
	
	homeTimelineView socialProvider: self socialProvider.
	homeTimelineView loadToots ifFalse: [^ false].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged.
	^ true