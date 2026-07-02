updating
loadToots

	| result |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	result := mastodonApi getPrivateTimeline.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: result value.
	^ true