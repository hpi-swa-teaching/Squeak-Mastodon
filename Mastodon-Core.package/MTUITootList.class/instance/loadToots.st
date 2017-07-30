accessing
loadToots
	| toots |	
	self mastodonApi isAuthenticated ifFalse: [^false].

	toots := mastodonApi getPrivateTimeline.
	toots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setToots: toots value.
	^ true.