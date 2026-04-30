updating
loadMoreToot
	| newToots minValue |
	self mastodonApi isAuthenticated ifFalse: [^false].
			
	minValue := self minID.
	minValue isNumber ifTrue: [minValue := minValue - 1].
	newToots := mastodonApi getPrivateTimelineMax: minValue.
	
	newToots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendToots: newToots value.
