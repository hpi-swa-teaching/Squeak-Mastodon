accessing
loadMoreTweets
	| newTweets |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newTweets := twitterApi timeline: self name with: STSettingsStore default tweetNum andMax: (self minID - 1).
	
	newTweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendTweets: newTweets value.
