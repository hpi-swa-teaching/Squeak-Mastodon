views
loadProfileViewOf: aMTAccount

	| userTimeline |
	MTMastodonApi getInstance hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	userTimeline := self loadUserTimeLineView: aMTAccount.
	self loadView: (MTUIProfile for: aMTAccount) as: #profileView activate: #profileButton.
	scrollMorph scrollToTop