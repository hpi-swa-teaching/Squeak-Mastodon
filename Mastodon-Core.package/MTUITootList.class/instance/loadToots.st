updating
loadToots

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := mastodonApi getPrivateTimeline.
	toots isError ifTrue: [
		self inform: (toots error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: toots value.
	^ true