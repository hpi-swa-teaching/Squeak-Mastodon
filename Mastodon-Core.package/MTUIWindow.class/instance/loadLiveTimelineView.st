views
loadLiveTimelineView

	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	self loadView: MTUILiveTimeline new as: #liveTimelineView activate: #liveTimelineButton