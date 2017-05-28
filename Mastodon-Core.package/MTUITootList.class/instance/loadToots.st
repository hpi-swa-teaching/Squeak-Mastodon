accessing
loadToots
	| toots |
	self mastodonApi hasUser 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	toots := mastodonApi timeline: self name with: MTSettingsStore default tootNum.
	toots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setToots: toots value.