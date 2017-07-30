accessing
loadMoreToot
	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^false].
			
	newToots := mastodonApi getPrivateTimelineMax: (self minID - 1).
	
	newToots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendToots: newToots value.
