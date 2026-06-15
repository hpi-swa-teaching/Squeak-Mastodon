views
loadHomeTimelineView

	| homeTimelineView |
	self refreshProvider.
	homeTimelineView := MTUITootList new.
	
	homeTimelineView mastodonApi: self mastodonApi.
	homeTimelineView loadToots ifFalse: [^ false].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged