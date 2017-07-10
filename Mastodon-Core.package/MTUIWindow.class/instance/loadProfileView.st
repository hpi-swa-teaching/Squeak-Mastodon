as yet unclassified
loadProfileView
	| currentUser|
	self mastodonApi isAuthenticated 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	currentUser := mastodonApi getCurrentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	self loadProfileViewOf: currentUser value.