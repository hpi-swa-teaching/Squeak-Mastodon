views
loadProfileView

	| currentUser |
	self mastodonApi hasToken ifFalse: [^ false].
	
	currentUser := mastodonApi getCurrentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	self loadProfileViewOfCurrentUser: currentUser value.
