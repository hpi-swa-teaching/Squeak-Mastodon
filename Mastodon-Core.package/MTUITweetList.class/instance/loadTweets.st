accessing
loadTweets
	| tweets |
	self twitterApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	tweets := twitterApi timeline: self name with: STSettingsStore default tweetNum.
	tweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setTweets: tweets value.