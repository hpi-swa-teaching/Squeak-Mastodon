updating
loadToots

	| likedToots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	likedToots := self mastodonApi getLikes.
	likedToots isError ifTrue: [
		self inform: (likedToots error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: likedToots value.
	^ true