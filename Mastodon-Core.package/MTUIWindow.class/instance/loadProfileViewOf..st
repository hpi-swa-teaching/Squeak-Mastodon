views
loadProfileViewOf: aMTAccount

	| userTimeline |

	MTMastodonApi getInstance hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	userTimeline := self loadUserTimeLineView: aMTAccount.
	self loadView: (MTUIOtherProfile for: aMTAccount) as: #profileView activate: 'noButton'.
	scrollMorph scrollToTop
