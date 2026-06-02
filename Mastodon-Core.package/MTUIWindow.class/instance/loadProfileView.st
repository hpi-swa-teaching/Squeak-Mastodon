views
loadProfileView
	| currentUser|
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	currentUser := mastodonApi getCurrentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	self loadProfileViewOf: currentUser value.