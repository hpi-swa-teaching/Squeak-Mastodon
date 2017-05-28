as yet unclassified
loadProfileView
	| userTimeline currentUser|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := MTUIUserTimeline new.
	
	userTimeline
		twitterApi: self twitterApi;
		loadTweets.
	
	currentUser := twitterApi currentUser.
	
	(currentUser isError)
		ifTrue: [ self inform: 'An Error occurred.'. 
			     ^ false].
	
	self 
		loadView: (MTUIProfile with: userTimeline value from: currentUser value)
		as: #profileView 
		activate: #profileButton.