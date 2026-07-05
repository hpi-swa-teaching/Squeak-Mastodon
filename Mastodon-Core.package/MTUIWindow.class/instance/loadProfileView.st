views
loadProfileView

	| currentUser |
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	currentUser := self mastodonApi getCurrentUser.
	
	currentUser isError ifTrue: [
		self inform: 'An Error occurred.'.
		^ self].
	self loadProfileViewOf: currentUser value