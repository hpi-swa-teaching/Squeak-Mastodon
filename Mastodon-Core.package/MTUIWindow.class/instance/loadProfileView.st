views
loadProfileView
"only necessary if displaying profiles is possible"

	| currentUser |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	currentUser := mastodonApi getCurrentUser.
	
	currentUser isError ifTrue: [
		self inform: 'An Error occurred.'.
		^ false].
	self loadProfileViewOf: currentUser value