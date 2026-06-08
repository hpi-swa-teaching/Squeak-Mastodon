views
loadProfileViewOf: aMTUser

	| userTimeline |
	userTimeline := self loadUserTimeLineView: aMTUser.
	self loadView: (MTUIOtherProfile with: self mastodonApi with: userTimeline from: aMTUser) as: #profileView activate: 'noButton'.
	scrollMorph scrollToTop
