views
loadProfileViewOfCurrentUser: aMTUser

	| userTimeline |
	userTimeline := self loadUserTimeLineView: aMTUser.
	self loadView: (MTUICurrentProfile with: userTimeline from: aMTUser) as: #profileView activate: #profileButton