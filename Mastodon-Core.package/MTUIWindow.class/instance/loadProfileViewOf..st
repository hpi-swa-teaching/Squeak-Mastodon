views
loadProfileViewOf: aMTUser
"this method is not used because displaying users is currently not possible, it's called by MTUIWindow>>displayUser:"

	| userTimeline |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline
		mastodonApi: self mastodonApi;
		loadTootsOf: aMTUser.
	self loadView: (MTUIProfile with: userTimeline from: aMTUser) as: #profileView activate: #profileButton