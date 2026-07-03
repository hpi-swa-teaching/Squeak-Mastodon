updating
loadMoreToot

	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	newToots := self mastodonApi getStatuses: self user id max: self minID.
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ self].
	self appendToots: newToots value