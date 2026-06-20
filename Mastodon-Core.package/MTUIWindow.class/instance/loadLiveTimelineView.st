views
loadLiveTimelineView

	| liveTimelineView |
	self mastodonApi hasToken ifFalse: [^ false].
	liveTimelineView := MTUILiveTimeline new.
	liveTimelineView mastodonApi: self mastodonApi.
	self loadView: liveTimelineView as: #liveTimelineView activate: #liveTimelineButton