views
loadLikedPostsView
	| likedPostsView |
	self refreshProvider.
	likedPostsView := MTUILikedPostsTimeline new.

	likedPostsView mastodonApi: (self mastodonApi).
	likedPostsView loadToots ifFalse: [^ false].

	self
		loadView: likedPostsView
		as: #likedPostsView
		activate: #likedPostsButton.
	self layoutChanged.