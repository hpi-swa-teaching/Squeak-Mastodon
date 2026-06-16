views
loadProfileViewOf: aMTAccount

	MTMastodonApi getInstance hasToken ifFalse: [^ false].
	
	self loadView: (MTUIProfile for: aMTAccount) as: #profileView activate: #profileButton