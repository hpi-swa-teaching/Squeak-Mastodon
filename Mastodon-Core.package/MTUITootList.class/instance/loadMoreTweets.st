accessing
loadMoreTweets
	| newTweets |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newTweets := tootApi timeline: self name with: MTSettingsStore default tweetNum andMax: (self minID - 1).
	
	newTweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendTweets: newTweets value.
