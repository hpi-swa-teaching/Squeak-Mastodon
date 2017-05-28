as yet unclassified
loadProfileView
	| userTimeline currentUser|
	self mastodonApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := MTUIUserTimeline new.
	
	userTimeline
		mastodonApi: self mastodonApi;
		loadTweets.
	
	currentUser := mastodonApi currentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	
	self 
		loadView: (MTUIProfile with: userTimeline value from: currentUser value)
		as: #profileView 
		activate: #profileButton.