views
loadLiveTimelineView
	| liveTimelineView |
	self mastodonApi isAuthenticated ifFalse: [^false].
	liveTimelineView := MTUILiveTimeline new.

	liveTimelineView
		mastodonApi: (self mastodonApi).
	self
		loadView: liveTimelineView
		as: #liveTimelineView
		activate: #liveTimelineButton.