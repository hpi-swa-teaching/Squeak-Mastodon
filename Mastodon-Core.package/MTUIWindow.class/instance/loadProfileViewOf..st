as yet unclassified
loadProfileViewOf: aSTUser
	| userTimeline|
	self mastodonApi hasUser 
		ifFalse: [ self inform: 'Please login first.'. 
				^ false].
	
	userTimeline := MTUIUserTimeline new.
	
	userTimeline 
		mastodonApi: self mastodonApi;
		loadTweetsOf: aSTUser.
	
	self 
		loadView: (MTUIProfile with: userTimeline from: aSTUser)
		as: #profileView 
		activate: #profileButton.