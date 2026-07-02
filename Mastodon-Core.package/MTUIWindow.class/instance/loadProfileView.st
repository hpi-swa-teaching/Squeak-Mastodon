views
loadProfileView

	| currentUser |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	currentUser := self mastodonApi getCurrentUser.
	
	currentUser isError ifTrue: [
		self inform: 'An Error occurred.'.
		^ false].
	self loadProfileViewOf: currentUser value