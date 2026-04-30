views
loadProfileView
	| currentUser|
	self refreshProvider.
	(self mastodonApi supportsFeature: #profile)
		ifFalse: [self inform: 'Profiles not supported.'. ^ false].
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	currentUser := mastodonApi getCurrentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	self loadProfileViewOf: currentUser value.