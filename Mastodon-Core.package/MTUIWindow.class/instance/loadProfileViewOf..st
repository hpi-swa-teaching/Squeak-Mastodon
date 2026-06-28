views
loadProfileViewOf: aUser
	
	| userTimeline |
	self ensureLoggedIn ifFalse: [^ false].
	
	userTimeline := self loadUserTimeLineView: aUser.
	self loadView: (MTUIProfile for: aUser) as: #profileView activate: #profileButton.
	self scrollMorph scrollToTop