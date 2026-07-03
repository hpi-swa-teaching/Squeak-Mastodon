views
loadHomeTimelineView

	| homeTimelineView |
	self refreshProvider.
	homeTimelineView := MTUIHomeTimeline new.
	
	homeTimelineView mastodonApi: self mastodonApi.
	homeTimelineView loadToots ifFalse: [^ self].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged