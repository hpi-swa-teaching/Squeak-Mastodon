views
loadProfileViewOf: aMTAccount

	| userTimeline |

	MTMastodonApi getInstance hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	userTimeline := self loadUserTimeLineView: aMTUser.
	self loadView: (MTUIOtherProfile with: userTimeline from: aMTUser) as: #profileView activate: 'noButton'.
	scrollMorph scrollToTop
