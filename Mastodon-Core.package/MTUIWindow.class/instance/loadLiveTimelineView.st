views-timelines
loadLiveTimelineView

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: MTUILiveTimeline new as: #liveTimelineView activate: #liveTimelineButton