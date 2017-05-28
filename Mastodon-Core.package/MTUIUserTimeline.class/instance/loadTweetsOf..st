as yet unclassified
loadTweetsOf: aSTUser
	| tweets |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	tweets := twitterApi userTimelineOf: aSTUser.
	
	tweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setTweets: tweets value.
	self render.