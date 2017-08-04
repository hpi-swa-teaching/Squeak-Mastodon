updating
loadTootsOf: aMTUser
	| toots |
	self mastodonApi isAuthenticated ifFalse: [^false].
			
	toots := mastodonApi getStatuses: aMTUser id.
	
	toots isError  
		ifTrue: [self inform: 'An error occurred'. 
				^ false].
			
	self setToots: toots value.
	self render.