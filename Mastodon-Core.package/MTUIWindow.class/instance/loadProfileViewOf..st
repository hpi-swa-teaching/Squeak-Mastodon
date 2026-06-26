views
loadProfileViewOf: aMTAccount

	MTMastodonApi getInstance hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	self loadView: (MTUIProfile for: aMTAccount) as: #profileView activate: #profileButton