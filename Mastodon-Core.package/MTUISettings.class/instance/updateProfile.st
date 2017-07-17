initialization
updateProfile 
	| text |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	
	text := usernameUpdateTextField contents asString.
	text size > 30
		ifTrue: [self inform: 'Not more than 30 characters username allowed.'.
			^ false].
	
	text := descriptionTextField contents asString.
	text size > 160
		ifTrue: [self inform: 'Not more than 160 characters description allowed.'.
			^ false].
		
	self halt.