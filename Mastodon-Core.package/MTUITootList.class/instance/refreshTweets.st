accessing
refreshTweets
	| newTweets |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newTweets := tootApi timeline: self name since: self maxID.
	
	newTweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self prependTweets: newTweets value.