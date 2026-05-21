views
loadProfileViewOf: aMTUser 
	| userTimeline |
	self mastodonApi isAuthenticated ifFalse: [^false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline mastodonApi: self mastodonApi;
		 loadTootsOf: aMTUser isSelf: true.
	self
		loadView: (MTUIProfile with: userTimeline from: aMTUser)
		as: #profileView
		activate: #profileButton