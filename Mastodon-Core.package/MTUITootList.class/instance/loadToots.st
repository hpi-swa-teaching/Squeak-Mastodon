updating
loadToots

	| toots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	toots := mastodonApi getPrivateTimeline.
	toots isError ifTrue: [
		self inform: (toots error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: toots value.
	self sortToots.
	^ true