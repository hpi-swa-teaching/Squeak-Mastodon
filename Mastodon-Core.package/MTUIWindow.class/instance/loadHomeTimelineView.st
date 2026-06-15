views
loadHomeTimelineView

	| homeTimelineView |
	homeTimelineView := MTUITootList new.
	
	homeTimelineView loadToots ifFalse: [^ false].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged