views
loadProfileViewOf: aMTUser

	| userTimeline |
	self mastodonApi hasToken ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline loadTootsOf: aMTUser.
	self loadView: (MTUIProfile with: userTimeline from: aMTUser) as: #profileView activate: #profileButton