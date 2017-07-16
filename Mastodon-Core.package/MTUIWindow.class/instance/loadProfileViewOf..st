as yet unclassified
loadProfileViewOf: aMTUser 
	| userTimeline |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline mastodonApi: self mastodonApi;
		 loadTootsOf: aMTUser.
	self
		loadView: (MTUIProfile with: userTimeline from: aMTUser)
		as: #profileView
		activate: #profileButton