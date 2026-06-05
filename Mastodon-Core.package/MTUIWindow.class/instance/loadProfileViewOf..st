views
loadProfileViewOf: aMTUser 
	| userTimeline |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^false].
	userTimeline := MTUIUserTimeline new.
	userTimeline user: aMTUser.
	userTimeline mastodonApi: self mastodonApi;
		 loadTootsOf: aMTUser isSelf: true.
	self
		loadView: (MTUIProfile with: userTimeline from: aMTUser)
		as: #profileView
		activate: #profileButton