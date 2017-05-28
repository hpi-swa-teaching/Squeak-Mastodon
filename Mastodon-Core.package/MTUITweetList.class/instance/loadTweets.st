accessing
loadTweets
	| tweets |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	tweets := twitterApi timeline: self name with: MTSettingsStore default tweetNum.
	tweets isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setTweets: tweets value.