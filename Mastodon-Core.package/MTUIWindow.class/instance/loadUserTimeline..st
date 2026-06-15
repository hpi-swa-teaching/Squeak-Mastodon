views
loadUserTimeLineView: aMTUser

	| userTimeline |
	self mastodonApi hasToken ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new window: self.
	userTimeline id: aMTUser id.
	userTimeline
		mastodonApi: self mastodonApi;
		loadTootsOf: aMTUser.
	
	^ userTimeline