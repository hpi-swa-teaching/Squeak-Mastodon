accessing
refreshTweets
	| newTweets |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newTweets := twitterApi timeline: self name since: self maxID.
	
	newTweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self prependTweets: newTweets value.