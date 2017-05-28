as yet unclassified
loadProfileViewOf: aSTUser
	| userTimeline|
	self twitterApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := MTUIUserTimeline new.
	
	userTimeline 
		twitterApi: self twitterApi;
		loadTweetsOf: aSTUser.
	
	self 
		loadView: (MTUIProfile with: userTimeline from: aSTUser)
		as: #profileView 
		activate: #profileButton.