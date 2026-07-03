updating
loadMoreToot

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	newToots := self mastodonApi getPrivateTimelineMax: self minID - 1.
	
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ self].
	
	self appendToots: newToots value