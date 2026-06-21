views
loadProfileView

	| currentUser |
	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	currentUser := self mastodonApi getCurrentUser.
	
	currentUser isError ifTrue: [
		self inform: 'An Error occurred.'.
		^ false].
	self loadProfileViewOf: currentUser value