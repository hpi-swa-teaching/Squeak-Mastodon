accessing
loadMoreToot
	| newToots |
	self mastodonApi isAuthenticated 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newToots := mastodonApi getPrivateTimelineMax: (self minID - 1).
	
	newToots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendToots: newToots value.
