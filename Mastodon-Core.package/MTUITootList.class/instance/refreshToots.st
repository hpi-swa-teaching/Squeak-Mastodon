updating
refreshToots
	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^false].
			
	newToots := mastodonApi getPrivateTimelineSince: maxID.
	
	newToots isError  
		ifTrue: [self inform: (newToots error ifNil: ['An error occurred']). 
				^ false].
			
	self prependToots: newToots value.