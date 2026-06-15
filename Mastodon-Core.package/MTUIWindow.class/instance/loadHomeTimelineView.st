views
loadHomeTimelineView

	| homeTimelineView |
	homeTimelineView := MTUITootList new window: self.
	
	homeTimelineView loadToots ifFalse: [^ false].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged