views
loadUserTimeLineView: aMTUser

	| userTimeline |
	self mastodonApi hasToken ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline
		mastodonApi: self mastodonApi;
		loadTootsOf: aMTUser.
	
	^ userTimeline