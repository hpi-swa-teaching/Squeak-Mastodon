views
loadLikedPostsView

	| likedPostsView |
	self refreshProvider.
	likedPostsView := MTUILikedPostsTimeline new.
	
	likedPostsView socialProvider: self socialProvider.
	likedPostsView loadToots ifFalse: [^ false].
	
	self loadView: likedPostsView as: #likedPostsView activate: #likedPostsButton.
	self layoutChanged.
	^ true