updating
loadToots

	| timeline |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	timeline := self mastodonApi getPrivateTimeline.
	timeline isError ifTrue: [
		self inform: (timeline error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: timeline value.
	^ true