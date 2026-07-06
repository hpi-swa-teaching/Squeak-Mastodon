views
loadProfileViewOf: aMTUser

	| userTimeline |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	userTimeline := MTUIUserTimeline new.
	userTimeline
		user: aMTUser;
		mastodonApi: self mastodonApi;
		loadTootsOf: aMTUser.
	self loadView: (MTUIProfile with: userTimeline from: aMTUser) as: #profileView activate: #profileButton