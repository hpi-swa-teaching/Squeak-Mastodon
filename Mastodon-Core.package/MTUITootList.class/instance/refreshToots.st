accessing
refreshToots
	| newToots |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newToots := mastodonApi timeline: self name since: self maxID.
	
	newToots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self prependToots: newToots value.