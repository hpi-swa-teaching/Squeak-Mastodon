views
loadLiveTimelineView

	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: MTUILiveTimeline new as: #liveTimelineView activate: #liveTimelineButton