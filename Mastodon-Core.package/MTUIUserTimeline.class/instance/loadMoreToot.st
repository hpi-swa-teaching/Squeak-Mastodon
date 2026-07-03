updating
loadMoreToot

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	newToots := self mastodonApi getStatuses: self id since: self minID.
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	self appendToots: newToots value.
	^ true