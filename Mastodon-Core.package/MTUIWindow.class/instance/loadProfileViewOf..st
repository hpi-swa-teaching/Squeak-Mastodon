views
loadProfileViewOf: aMTUser 
	| userTimeline |
	self refreshProvider.
	(self mastodonApi supportsFeature: #profile)
		ifFalse: [self inform: 'Profiles not supported.'. ^ false].
	self mastodonApi isAuthenticated ifFalse: [^false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline mastodonApi: self mastodonApi;
		 loadTootsOf: aMTUser.
	self
		loadView: (MTUIProfile with: userTimeline from: aMTUser)
		as: #profileView
		activate: #profileButton