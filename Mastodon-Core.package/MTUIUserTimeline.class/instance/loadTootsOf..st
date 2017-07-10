as yet unclassified
loadTootsOf: aMTUser
	| toots |
	self mastodonApi isAuthenticated 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
			
	toots := mastodonApi getStatuses: aMTUser id.
	
	toots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setToots: toots value.
	self render.