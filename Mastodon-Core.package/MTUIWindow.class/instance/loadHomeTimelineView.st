views
loadHomeTimelineView

	| homeTimelineView |
	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	homeTimelineView := MTUITootList new.
	
	homeTimelineView loadToots ifFalse: [^ false].
	
	self loadView: homeTimelineView as: #homeTimelineView activate: #homeTimelineButton.
	self layoutChanged