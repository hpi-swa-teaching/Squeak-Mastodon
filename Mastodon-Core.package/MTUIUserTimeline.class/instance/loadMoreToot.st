updating
loadMoreToot

	| newToots |
	self mastodonApi hasToken ifFalse: [^false].
	newToots := self mastodonApi getStatusesOf: id since: minID.
	newToots isError ifTrue: [
		self inform: (newToots error ifNil: ['An error occurred']).
		^ false].
	self appendToots: newToots value