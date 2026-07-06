updating
refreshToots

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	newToots := self mastodonApi getPrivateTimelineSince: self maxID.
	
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ self].
	
	self prependToots: newToots value.
	self sortToots