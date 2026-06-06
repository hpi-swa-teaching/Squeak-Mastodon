views
loadProfileViewOf: aMTUser

	| userTimeline |
	userTimeline := self loadUserTimeLineView: aMTUser.
	self loadView: (MTUIProfile with: userTimeline from: aMTUser) as: #profileView activate: 'noButton'.
	scrollMorph scrollToTop
