views
loadUserTimeLineView: aMTUser

	| userTimeline |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline
		mastodonApi: self mastodonApi;
		loadTootsOf: aMTUser.
	
	^ userTimeline