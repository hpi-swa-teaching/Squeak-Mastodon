views
loadProfileViewOfCurrentUser: aMTAccount

	| userTimeline |
	userTimeline := self loadUserTimeLineView: aMTAccount.
	self loadView: (MTUICurrentProfile for: aMTAccount) as: #profileView activate: #profileButton.
	scrollMorph scrollToTop