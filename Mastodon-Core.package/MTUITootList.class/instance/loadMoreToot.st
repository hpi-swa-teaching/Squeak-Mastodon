accessing
loadMoreToot
	| newToots |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	newToots := mastodonApi timeline: self name with: MTSettingsStore default tootNum andMax: (self minID - 1).
	
	newToots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self appendToots: newToots value.
